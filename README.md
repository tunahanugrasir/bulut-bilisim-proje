ZONGULDAK BÜLENT ECEVİT ÜNİVERSİTESİ 
MÜHENDİSLİK FAKÜLTESİ






YAPAY ZEKA DESTEKLİ MAIL UYGULAMASI


BİLGİSAYAR MÜHENDİSLİĞİ BÖLÜMÜ
BULUT BİLİŞİM PROJE RAPORU







TUNAHAN UĞRAŞIR
180106109033





ÖZET

Bu proje, Flutter ve Google Gmail API'sini kullanarak yapay zeka destekli bir mail uygulaması geliştirmeyi amaçlamaktadır. Uygulamanın temel amacı, kullanıcılara gelen maillere daha profesyonel ve hızlı bir şekilde yanıt vermelerini sağlayacak bir platform sunmaktır. Yapay zeka, kullanıcının yazışma tarzını ve içeriğini analiz ederek uygun yanıt önerileri sunar.
Kullanılan Teknolojiler
Flutter: Mobil uygulama geliştirme için kullanılan açık kaynaklı bir UI yazılım geliştirme kitidir. Hem iOS hem de Android platformlarında çalışabilen uygulamalar geliştirmek için kullanılmıştır.
Google Gmail API: Gmail hesaplarına erişim sağlamak ve mail gönderme/alma işlemlerini gerçekleştirmek için kullanılmıştır.
Yapay Zeka (GPT-3.5): OpenAi şirketinin sağladığı GPT-3.5 modeli kullanılarak, gelen maillerin analiz edilmesi ve uygun yanıtların oluşturulması sağlanmıştır.
Uygulama Özellikleri
Gmail Entegrasyonu: Kullanıcıların Gmail hesaplarına bağlanarak gelen ve giden mailleri yönetmelerini sağlar.
Mail Analizi: Gelen maillerin içeriğini analiz eder ve kullanıcının yazışma tarzına uygun yanıt önerileri sunar.
Otomatik Yanıtlar: Kullanıcı onayı ile otomatik olarak yanıt gönderme özelliği.
Güvenlik: Kullanıcı verilerinin güvenliğini sağlamak için OAuth 2.0 protokolü kullanılmıştır.

KAYNAKÇA
Flutter Resmi Dokümantasyonu. (2023). Retrieved from https://docs.flutter.dev/
Google Gmail API Documentation. Retrieved from https://developers.google.com/gmail/api
OpenAI GPT-3.5 Documentation. (n.d.). Retrieved from https://beta.openai.com/docs/
Flutter by Example. (n.d.). Retrieved from https://flutterbyexample.com/
Flutter Awesome. (n.d.). Retrieved from https://flutterawesome.com/
OpenAI API Quickstart. (n.d.). Retrieved from https://beta.openai.com/docs/quickstart
Google Developers Blog. (n.d.). Using the Gmail API to Send Email. Retrieved from https://platform.openai.com/docs/introduction
OpenAI Research. (n.d.). Retrieved from  https://platform.openai.com/docs/introduction







PROJEDE YAPILANLAR
Bu projede, Flutter ve Google Gmail API'sini kullanarak yapay zeka destekli bir mail uygulaması geliştirdim. Uygulamanın amacı, kullanıcılara gelen maillere daha profesyonel ve hızlı bir şekilde yanıt vermelerini sağlayacak bir platform sunmaktır. Yapay zeka, kullanıcının yazışma tarzını ve içeriğini analiz ederek uygun yanıt önerileri sunar. Bu bölümde, projenin geliştirilme sürecini ve teknik detaylarını adım adım açıklayacağım.
1. Proje Planlama ve Gereksinim Analizi
Projenin ilk aşamasında, uygulamanın gereksinimleri ve kapsamı belirlendi. Kullanıcıların ihtiyaçları ve beklentileri göz önünde bulundurularak aşağıdaki ana özellikler tanımlandı:
•	Gmail entegrasyonu
•	Mail analizi ve yanıt önerileri
•	Otomatik yanıt gönderme
•	Kişiselleştirme ve güvenlik
2. Teknoloji Seçimi
Projenin gereksinimlerini karşılamak için aşağıdaki teknolojiler seçildi:
•	Flutter: Hem iOS hem de Android platformlarında çalışabilen mobil uygulamalar geliştirmek için.
•	Google Gmail API: Gmail hesaplarına erişim sağlamak ve mail gönderme/alma işlemlerini gerçekleştirmek için.
•	OpenAI GPT-3.5: Doğal dil işleme ve makine öğrenimi teknikleri kullanarak, gelen maillerin analiz edilmesi ve uygun yanıtların oluşturulması için.

3. Geliştirme Süreci
3.1. Flutter ile Kullanıcı Arayüzü Tasarımı
Flutter kullanarak kullanıcı dostu ve işlevsel bir arayüz tasarlandı. Arayüz, aşağıdaki bileşenleri içerir:
•	Giriş Ekranı: Kullanıcıların Gmail hesaplarına giriş yapmalarını sağlar.
•	Mail Listesi Ekranı: Kullanıcıların gelen ve giden maillerini görüntülemelerini sağlar.
•	Mail Detay Ekranı: Seçilen mailin içeriğini ve yanıt önerilerini gösterir.
•	Yanıt Ekranı: Kullanıcıların önerilen yanıtları düzenleyip göndermelerini sağlar.
3.2. Google Gmail API Entegrasyonu
Google Gmail API'si kullanılarak aşağıdaki işlevler gerçekleştirildi:
•	OAuth 2.0 ile Kimlik Doğrulama: Kullanıcıların güvenli bir şekilde Gmail hesaplarına giriş yapmalarını sağlar.
•	Mail Alma ve Gönderme: Kullanıcıların gelen ve giden maillerini alır ve yeni mailler göndermelerini sağlar.
•	Mail İçeriği Analizi: Gelen maillerin içeriğini analiz eder ve yanıt önerileri oluşturur.
3.3. OpenAI GPT-3.5 ile Yapay Zeka Entegrasyonu
OpenAI GPT-3.5 modeli kullanılarak aşağıdaki işlevler gerçekleştirildi:
•	Mail İçeriği Analizi: Gelen maillerin içeriğini analiz eder ve kullanıcının yazışma tarzına uygun yanıt önerileri oluşturur.
•	Yanıt Önerileri: Kullanıcının yazışma tarzını ve mail içeriğini dikkate alarak profesyonel ve hızlı yanıt önerileri sunar.
3.4. Güvenlik ve Veri Gizliliği
Kullanıcı verilerinin güvenliğini sağlamak için aşağıdaki önlemler alındı:
•	OAuth 2.0: Kullanıcıların Gmail hesaplarına güvenli bir şekilde giriş yapmalarını sağlar.
•	Veri Şifreleme: Kullanıcı verileri şifrelenerek saklanır ve iletilir.
•	Gizlilik Politikası: Kullanıcı verilerinin gizliliğini korumak için bir gizlilik politikası oluşturuldu.
4. Test ve Hata Ayıklama
Uygulama, çeşitli senaryolarla test edilerek hatalar giderildi. Test süreci aşağıdaki adımları içerir:
•	Birlikte Çalışabilirlik Testleri: Uygulamanın farklı cihaz ve platformlarda sorunsuz çalıştığından emin olmak için testler yapıldı.
•	Fonksiyonel Testler: Uygulamanın tüm işlevlerinin doğru çalıştığından emin olmak için testler yapıldı.
•	Kullanıcı Deneyimi Testleri: Kullanıcıların uygulamayı rahatça kullanabildiğinden emin olmak için testler yapıldı.

Sonuç
Bu proje, kullanıcıların maillerine daha hızlı ve profesyonel yanıtlar vermelerini sağlayarak iş verimliliğini artırmayı başarmıştır. Yapay zeka destekli yanıt önerileri, kullanıcıların zaman kazanmasını ve daha etkili iletişim kurmasını sağlamıştır. 
