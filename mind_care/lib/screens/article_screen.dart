import 'package:flutter/material.dart';
import 'package:mind_care/widgets/article.dart';

class ArticleScreen extends StatelessWidget {

  static const routeName= '/article';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * .1,
          title: Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text('Articles', 
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
              Article("The Social Stigma of Mental Illness", 1),
              Article("Five Ways to Write About Your Anger", 2),
              Article("Forgiveness - Breaking the Cycle of Resentment", 3),
              Article("What is Depression?", 4),
            ],
          ),
        ),
      ),
    );
  }
}
