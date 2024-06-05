import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:smart_mail_app/services/open_ai_service.dart';
import '../services/gmail_service.dart';

class SignInScreen extends StatefulWidget {
  @override
  State createState() => SignInScreenState();
}

class SignInScreenState extends State<SignInScreen> {
  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/gmail.readonly',
      'https://www.googleapis.com/auth/gmail.send',
    ],
  );

  GoogleSignInAccount? _currentUser;

  @override
  void initState() {
    super.initState();
    _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
      setState(() {
        _currentUser = account;
      });
    });
    _googleSignIn.signInSilently();
  }

  Future<void> _handleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }

  Future<void> _handleSignOut() async {
    _googleSignIn.disconnect();
  }

  Future<void> _handleReply(String messageId, String emailContent) async {
    try {
      final replyText = await OpenAIService.generateReply(emailContent);
      await GmailService.sendEmail(_currentUser!, messageId, replyText);
    } catch (error) {
      print('Failed to send reply: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    GoogleSignInAccount? user = _currentUser;
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Sign In'),
      ),
      body: ConstrainedBox(
        constraints: const BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (user != null)
              Column(
                children: <Widget>[
                  ListTile(
                    leading: GoogleUserCircleAvatar(
                      identity: user,
                    ),
                    title: Text(user.displayName ?? ''),
                    subtitle: Text(user.email),
                  ),
                  ElevatedButton(
                    child: const Text('SIGN OUT'),
                    onPressed: _handleSignOut,
                  ),
                  ElevatedButton(
                    child: const Text('READ EMAILS'),
                    onPressed: () async {
                      await GmailService.readEmails(_currentUser!);
                    },
                  ),
                  ElevatedButton(
                    child: const Text('REPLY TO EMAIL'),
                    onPressed: () async {
                      // Örnek bir email içeriği ve mesaj ID'si
                      String emailContent = "Example email content";
                      String messageId = "exampleMessageId";
                      await _handleReply(messageId, emailContent);
                    },
                  ),
                ],
              )
            else
              Column(
                children: <Widget>[
                  const Text('You are not signed in.'),
                  ElevatedButton(
                    child: const Text('SIGN IN'),
                    onPressed: _handleSignIn,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}