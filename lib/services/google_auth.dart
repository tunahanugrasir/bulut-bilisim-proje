import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/gmail/v1.dart';
import 'package:http/http.dart' as http;

class GoogleAuth {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: [
    GmailApi.gmailReadonlyScope,
    GmailApi.gmailSendScope,
  ]);

  Future<GmailApi?> getGmailApi() async {
    final GoogleSignInAccount? account = await _googleSignIn.signIn();
    final GoogleSignInAuthentication? authentication =
        await account?.authentication;

    if (authentication != null) {
      final http.Client client = GoogleAuthClient(authentication.accessToken!);
      return GmailApi(client);
    }
    return null;
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
  }
}

class GoogleAuthClient extends http.BaseClient {
  final String _accessToken;
  GoogleAuthClient(this._accessToken);
  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['Authorization'] = 'Bearer $_accessToken';
    return request.send();
  }
}
