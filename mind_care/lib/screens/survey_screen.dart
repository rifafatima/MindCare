import 'package:flutter/material.dart';
import 'package:mind_care/models/mdi.dart';
import 'package:mind_care/models/phq9.dart';
import 'package:page_transition/page_transition.dart';

class SurveyScreen extends StatelessWidget {

  static const routeName= '/survey';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * .1,
          title: Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text('Survey', 
            style: TextStyle(fontSize: 25,),
            ),
          ),
          backgroundColor: Colors.teal.shade100,
          ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background_image.png'), fit: BoxFit.cover),
        ),
        child: Container(
          margin: EdgeInsets.only(top: 20, left: 10, right: 10),
          child: ListView(
            children: [
              InkWell(
                onTap: () {
                   Navigator.push(
                      context,
                      PageTransition(
                        child: QuestionMDI(),
                        type: PageTransitionType.fade,
                      ),
                      );
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 100,
                  // width: MediaQuery.of(context).size.width * .8,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                     gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Colors.white, Colors.teal.shade50],
          ),
                    border:
                        Border.all(color: Colors.deepPurple.shade100, width: 3),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Text("MDI",style: TextStyle(fontSize: 20),),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                        child: QuestionPHQ(),
                        type: PageTransitionType.fade,
                      ),
                      );
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 100,
                  // width: MediaQuery.of(context).size.width * .8,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    // color: Color(0xfff3e5f5),
                    gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [Colors.white, Colors.teal.shade50],
                  ),
                    border: Border.all(
                        color: Colors.deepPurple.shade100,
                        width: 3),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Text("PHQ-9", style: TextStyle(fontSize: 20),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}