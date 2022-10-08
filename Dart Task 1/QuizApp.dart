import 'dart:io';


class MathQuestion{
  String question;
  double answer;
  MathQuestion({
   required this.question,
   required this.answer
});
}
getAnswer(String questions){
  print(questions);
  var userAnswer = double.tryParse(stdin.readLineSync()!)??0.0;
  return userAnswer;

}

void main(List<String> arguments) {
  double answer;
  int mark=0;
  var questions=[
    MathQuestion(question: "5 x 6", answer: 30.0),
    MathQuestion(question: "30/5", answer: 6.0),
    MathQuestion(question: "4 + 8", answer: 12.0),
    MathQuestion(question: "6 - 1", answer: 5.0),
  ];
  int length = questions.length;
  for (int i=0;i<length;i++){
    answer=getAnswer(questions[i].question);
    print("Your answer is $answer");
    if (answer==questions[i].answer){
      print("Correct answer");
      mark++;
    }
    else{
      print("Wrong Answer ");
      print("Correct answer is: ${questions[i].answer}");
    }
  }
  print("Test finished \nYour Mark is $mark / $length");
}
