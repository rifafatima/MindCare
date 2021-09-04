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


  final List<Question> questions=[
    Question(text: "Felt low in spirits or sad?"),
    Question(text: "Lost interest in daily activities?"),
    Question(text: "Felt lacking in energy and strength?"),
    Question(text: "Felt less confident?"),
    Question(text: "Had a bad conscience or feelings of guilt?"),
    Question(text: "Had difficulty in concentrating, e.g. when reading the newspaper or watching television?"),
    Question(text: "Felt very restless?"),
    Question(text: "Had trouble sleeping at night"),
    Question(text: "Suffered from reduced appetite"),
    Question(text: "Suffered from increased appetite"),
  ] ;


class QuestionMDI extends StatefulWidget {

  static const routeName= '/questions_mdi';

  @override
  _QuestionMDIState createState() => _QuestionMDIState();
}

class _QuestionMDIState extends State<QuestionMDI> {
  String result= "";
  String questionText = "Start!";
  String quesNo= "0";
  QuestionAndResult qr = QuestionAndResult(questions);

  @override
  Widget build(BuildContext context) {
    
    result= qr.getResult();
    questionText = qr.getQuestion();
    quesNo= qr.getQuestionNumber();

    return Scaffold(
      appBar: AppBar(
        title: Text('Survey: MDI'),
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
   List<Color> colors=[g1, g2, g3, g4, g5];
   List<String> texts=["At no time","Some of the time","Slightly less than half of the time","Slightly more than half of the time","Most of the time"];
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
      for (int i = 0; i < 5; i++) 
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