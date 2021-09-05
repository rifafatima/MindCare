import 'package:flutter/material.dart';

class Day extends StatefulWidget {
   final data;
   Color clr=null;

  Day(this.data,{this.clr});

  @override
  _DayState createState() => _DayState();
}

class _DayState extends State<Day> {
  @override
  Widget build(BuildContext context) {
    double width= MediaQuery.of(context).size.width/2;
    return Container(
      padding: const EdgeInsets.all(13),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.teal.shade100,
        //color: widget.clr==null? Colors.teal.shade100: newColor,
        borderRadius: BorderRadius.all(Radius.circular(width)),
      ),
      child: Text(
        widget.data,
        style: const TextStyle(
          fontSize: 23,
        ),
      ),
    );
  }
}