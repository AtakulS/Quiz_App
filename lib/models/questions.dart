import 'package:quiz_deneme/models/question.dart';

const List<Question> questions = [
  Question(
    question:
        '1. Aşağıdakilerden hangisi flutterda state i update eden fonksiyondur?',
    correctAnswerIndex: 0,
    options: [
      'a) setState',
      'b) constructor',
      'c) readState',
      'd) writeState',
    ],
  ),
  Question(
    question: '2. Flutter hangi dili kullanır?',
    correctAnswerIndex: 2,
    options: [
      'a) javascript',
      'b) C#',
      'c) Dart',
      'd) Java',
    ],
  ),
  Question(
    question: '3. Flutter, hangi mobil platformlar için kullanılabilir?',
    correctAnswerIndex: 0,
    options: [
      'a) Android ve iOS',
      'b) Windows Phone',
      'c) BlackBerry',
      'd) Symbian',
    ],
  ),
  Question(
    question: '4. Flutter nedir?',
    correctAnswerIndex: 2,
    options: [
      'a) Bir web tarayıcısı',
      'b) Bir programlama dili',
      'c) Bir yazılım geliştirme kütüphanesi',
      'd) Bir veritabanı yönetim sistemi',
    ],
  ),
  Question(
    question: '5. Flutter uygulamaları, hangi tasarım dilini kullanır?',
    correctAnswerIndex: 3,
    options: [
      'a) HTML',
      'b) CSS',
      'c) JavaScript',
      'd) Material Design ve Cupertino',
    ],
  ),
  Question(
    question: '6. Flutterda "Hot Reload" ne işe yarar?',
    correctAnswerIndex: 1,
    options: [
      'a) Uygulama yayınlamak için kullanılır',
      'b) Kod değişikliklerini anında uygulamada görmenizi sağlar',
      'c) Bir uygulamanın tüm kodunu sıfırlar',
      'd) Yalnızca hata ayıklama için kullanılır',
    ],
  ),
  Question(
    question: '7. Flutter uygulamaları hangi platformda derlenir?',
    correctAnswerIndex: 3,
    options: [
      'a) Android Studio',
      'b) Xcode',
      'c) Visual Studio Code',
      'd) Flutter SDK',
    ],
  ),
  Question(
    question: '8. Flutter, neden çoğu geliştirici tarafından tercih edilir??',
    correctAnswerIndex: 2,
    options: [
      'a) Yalnızca bir platformda çalışabilir',
      'b) Performansı düşüktür',
      'c) Hızlı prototipleme imkanı sunar ve aynı kod tabanıyla birden çok platformda çalışabilir',
      'd) Sadece profesyonel geliştiriciler için uygun değildir',
    ],
  ),
  Question(
    question: '9.Flutter ile hangi türde uygulamalar geliştirilebilir?',
    correctAnswerIndex: 2,
    options: [
      'a) Sadece oyunlar',
      'b) Yalnızca sosyal medya uygulamaları',
      'c) Mobil uygulamalar, masaüstü uygulamalar ve web uygulamaları',
      'd) Yalnızca finansal uygulamalar',
    ],
  ),
  Question(
    question:
        '10. Flutterda Stateful ve Stateless widgetler arasındaki fark nedir?',
    correctAnswerIndex: 2,
    options: [
      'a) Stateful widgetler, durum değişikliklerini izleyemez',
      'b) Stateless widgetler, durumlarını saklayabilir',
      'c) Stateful widgetler, durumlarını saklayabilir ve durum değişikliklerini izleyebilir',
      'd) Stateless widgetler, durum değişikliklerini izleyemez',
    ],
  ),
];
