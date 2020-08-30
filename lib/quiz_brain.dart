import 'package:turkish_quiz/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionList = [
    Question('Ben de sizinle geleceğim.', true),
    Question(
        'Bu konuyla ilgili kanun, Resmî Gazete\’de yayımlanarak yürürlüğe girdi.',
        true),
    Question("Yarın ki toplantı ertelendi.", false),
    Question('Ülkemizin kuzeydoğusunda bol miktarda çay yetiştirilir.', true),
    Question('Lüks mallardan alınan vergiler artırıldı.', true),
    Question('Hiç birşey senin beklediğin gibi olmayacak.', false),
    Question('Sen pizza değilsin, herkesi mutlu edemezsin.', true),
    Question(
        'O kadar merhametlidir ki yakın arkadaşları arasında karıncaincitmez olarak anılır. ',
        true),
    Question('Uçaklarda yolcular 30 kg’den fazla bagaj taşıyamazlar.', false),
    Question('Bu kadar sallapati biri olduğunu tahmin etmemiştim.', true),
    Question('Beş yıl önce hukuku bitirdiğini söyledi.', true),
    Question('Dün çok üşümüş; oysaki oldukça sıkı giyinmişti.', true),
    Question('Hangi yoldan gideceğimiz hiç farketmez, ikisi de aynı uzunlukta.',
        false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionList.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionList[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionList[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionList.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
