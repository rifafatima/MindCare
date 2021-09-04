class QuestionAndResult{

  int questionNumber=0;
  int totalScore=0;
  List<Question> questions;

  QuestionAndResult(this.questions);

  String getQuestionNumber(){
    if(questionNumber< questions.length){
       return questionNumber.toString();
     }
     else
     {
       return null;
     }
  }

   String getQuestion(){
     if(questionNumber<questions.length){
       return questions[questionNumber].text;
     }
     else
       {
         return "Score: "+ totalScore.toString();
       }

   }

   void setScore(int score){
     questions[questionNumber++].score=score;
     totalScore+=score;
   }

   

   String getResult()
   {
     if(questionNumber<questions.length)
     {
       return "";
     }

     else
     {
          if(questions.contains(Question(text: "Felt low in spirits or sad?")))
          {
              if(totalScore>=0 && totalScore<=20)
              {
                return "You are doing great!";
              }
              else if(totalScore>=21 && totalScore<=25)
              {
                return "Doubtful or mild existence of depression, we hope you take care of yourself!";
              }
              else if(totalScore>=26 && totalScore<=30)
              {
                return "Moderate depression symptoms, we advise you a consultation with a doctor!";
              }
              else if(totalScore>=31 && totalScore<=50)
              {
                return "Severe Depression, please consult a doctor and we hope you get better soon!";
              }
              else {
                return "";
              }
          }
          else
          {
              if(totalScore>=0 && totalScore<=4)
              {
                return "You are doing great!";
              }
              else if(totalScore>=5 && totalScore<=9)
              {
                return "Mild existence of depression, we hope you take care of yourself!";
              }
              else if(totalScore>=10 && totalScore<=14)
              {
                return "Moderate depression symptoms, we advise you a consultation with a doctor!";
              }
              else if(totalScore>=15 && totalScore<=19)
              {
                return "Moderately Severe Depression, please consult a doctor and we hope you get better soon!";
              }
              else if(totalScore>=20 && totalScore<=27)
              {
                return "Severe Depression, please consult a doctor and we hope you get better soon!";
              }
              else {
                return "";
              }
         }
     }
   }
}

class Question{
   String text;
   int score;

   Question({text, score=0}){
     this.text=text;
     this.score=score;
   }

}