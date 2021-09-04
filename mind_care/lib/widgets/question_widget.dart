import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  String result;
  String question;
  String questionNumber;

  QuestionCard(this.question, this.questionNumber, this.result);

  @override
  Widget build(BuildContext context) {
    return Center(  
      child: Container(  
        width: 330,  
        height: 200,    
          decoration: BoxDecoration(
            border: Border.all(
                        color: Colors.deepPurple.shade100,
                        width: 3),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
              gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Colors.white, Colors.teal.shade50],
            // boxShadow: [
            //   BoxShadow(
            //          color: Colors.grey,
            //           offset: const Offset(
            //             5.0,
            //             5.0,
            //           ),
            //           blurRadius: 5.0,
            //           spreadRadius: 1.0,
            //         ), 
            // ] 
          ), 
          ),
          child: Container(
              child: SingleChildScrollView(
                child: Column(  
                  mainAxisSize: MainAxisSize.min,  
                  children: [
                    Text( questionNumber==null? '': (int.parse(questionNumber)+1).toString()+'.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      question,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                      ),
                       textAlign: TextAlign.center,
                    ),
                  ),

                  questionNumber==null?
                  Text( 
                    result,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                    ),
                     textAlign: TextAlign.center
                  ):
                  Container(),
                  ],
                ),
              ),
            ), 
        ),   
    );  
  }
}