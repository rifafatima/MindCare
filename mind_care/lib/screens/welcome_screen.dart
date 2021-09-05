import 'package:flutter/material.dart';
import 'package:mind_care/screens/article_screen.dart';
import 'package:mind_care/screens/mood_tracker.dart';
import 'package:mind_care/screens/survey_screen.dart';
import 'package:page_transition/page_transition.dart';

class WelcomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * .1,
          title: Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text('Home', 
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
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.only(left: 130),
                height: 200,
                decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/logo.png'), fit: BoxFit.fill),
        ),
                
              ),
              
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                      context,
                      PageTransition(
                        child: SurveyScreen(),
                        type: PageTransitionType.fade,
                      ),
                      );
                    },
                    child: Text(
                      "Survey",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: "ShipporiMincho"),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal.shade100,
                      padding: EdgeInsets.all(10),
                      textStyle: TextStyle(fontSize: 23),
                      minimumSize: Size(170, 50),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ArticleScreen()));
                    },
                    child: Text(
                      "Article",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: "ShipporiMincho"),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal.shade100,
                      padding: EdgeInsets.all(10),
                      textStyle: TextStyle(fontSize: 23),
                      minimumSize: Size(170, 50),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MoodTracking()));
                    },
                    child: Text(
                      "Mood Tracker",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: "ShipporiMincho"),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal.shade100,
                      padding: EdgeInsets.all(10),
                      textStyle: TextStyle(fontSize: 23),
                      minimumSize: Size(170, 50),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
