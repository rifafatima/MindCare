import 'package:flutter/material.dart';
import 'package:mind_care/screens/article_desc.dart';
import 'package:page_transition/page_transition.dart';

class Article extends StatelessWidget {
  final heading;
  final i;

  const Article(this.heading, this.i);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
              child: ArticleDesc(heading, i),
              type: PageTransitionType.fade,
            ));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        height: 70,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Colors.white, Colors.teal.shade50],
          ),
          border: Border.all(color: Colors.deepPurple.shade100, width: 3),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Text(
          heading,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
