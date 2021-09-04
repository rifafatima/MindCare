import 'package:flutter/material.dart';
import 'package:mind_care/models/question.dart';
import 'package:mind_care/screens/article_screen.dart';
import 'package:mind_care/screens/survey_screen.dart';
import 'package:mind_care/widgets/question_widget.dart';
import 'package:page_transition/page_transition.dart';

const Color g1= Color(0xffDAF7A6);
const Color g2 = Color(0xffC1F776);
const Color g3 = Color(0xffB5F5B3 );
const Color g4 = Color(0xff8CF29A);
const Color g5=Color(0xffA2D9AA );

final List<Question> questions_phq=[
    Question(text: "Little interest or pleasure in doing things"),
    Question(text: "Feeling down, depressed or hopeless"),
    Question(text: "Trouble falling or staying asleep?"),
    Question(text: "Feeling tired or havng little energy"),
    Question(text: "Poor appetite or over eating?"),
    Question(text: "Feeling bad about yourself or that you are a failure or have let yourself or your family down?"),
    Question(text: "Trouble concentrating on things, such as reading the newspaper or watching telvision ?"),
    Question(text: "Moving or speaking so slowly that other people could have noticed? Or so fidgety or restless that you have been moving a lot more than usual?"),
    Question(text: "Thoughts of hurting yourself in some way?"),
];


class QuestionPHQ extends StatefulWidget {

  static const routeName= '/questions_phq';

  @override
  _QuestionPHQState createState() => _QuestionPHQState();
}

class _QuestionPHQState extends State<QuestionPHQ> {
  String result= "";
  String questionText = "Start!";
  String quesNo= "0";
  QuestionAndResult qr = QuestionAndResult(questions_phq);

  @override
  Widget build(BuildContext context) {
    
    result= qr.getResult();
    questionText = qr.getQuestion();
    quesNo= qr.getQuestionNumber();

    return Scaffold(
      appBar: AppBar(
        title: Text('Survey: PHQ-9'),
        backgroundColor: Colors.teal.shade100,),
      body: Container(
         decoration: BoxDecoration(
         image: DecorationImage(
               image: AssetImage('assets/images/background_image.png'), 
               fit: BoxFit.cover
               ),
         ),

     child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       crossAxisAlignment: CrossAxisAlignment.stretch,
       children: 
         createButtons()
     ),
    ),
    );
  }

  List<Widget> createButtons() {
   List<Widget> list = List();
   List<Color> colors=[g1, g2, g3, g5];
   List<String> texts=["Not at all", "Several days","More than half of the day", "Nearly everyday"];
    list.add( 
      Expanded(
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Center(
          child: QuestionCard(questionText, quesNo, result),
        ),
      ),
    ),
    );

   if(quesNo==null)
   {
     list.add(
      Container(
        margin: EdgeInsets.only(left: 100, right: 100, bottom: 100),
        child: RaisedButton(
          color: Colors.teal.shade100,
          padding: EdgeInsets.all(10.0),
          shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: BorderSide(color: Colors.grey,
                    )
                    ),
                child: Text('Read articles.',
                style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
              ),
                onPressed: (){
                   Navigator.push(
                      context,
                      PageTransition(
                        child: ArticleScreen(),
                        type: PageTransitionType.fade,
                      ),
                      );
                })
          ),
     );
   }
    else
    {
      for (int i = 0; i < 4; i++) 
    {
      list.add(
        Container(
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: FlatButton(
            textColor: Colors.black,
            color: colors[i],
            child: Text(
              texts[i],
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
            onPressed: () {
              setState(() {
                qr.setScore(i);
                result= qr.getResult();
                questionText=qr.getQuestion();
              });
            },
          ),
        ),
      ));
    }
    }
    return list;
  }
}