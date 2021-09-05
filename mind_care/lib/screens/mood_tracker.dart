import 'package:flutter/material.dart';
import 'package:mind_care/models/day.dart';
import 'package:mind_care/widgets/dialogList.dart';
import 'package:collection/collection.dart';

class MoodTracking extends StatefulWidget {

  static const routeName= '/tracker';
  
  @override
  _MoodTrackingState createState() => _MoodTrackingState();
}
List<int> moodScore=[];

class _MoodTrackingState extends State<MoodTracking> {
  

var sum = moodScore.sum;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         toolbarHeight: MediaQuery.of(context).size.height * .1,
          title: Text('Mood Tracker', 
            style: TextStyle(fontSize: 25,),
            ),
          
          backgroundColor: Colors.teal.shade100,
          ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background_image.png'), fit: BoxFit.cover),
        ),
        child: Container(
            margin: EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                    SizedBox(width: 10),
                    Text(
                      "September",
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward)),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Day("01"),
                      onTap: () 
                      {
                        dialogList(context, "01", sum, moodScore);
                      }
                    ),
                    SizedBox(width: 20),
                    InkWell(
                      child: Day("02"),
                      onTap: () 
                      {
                        dialogList(context, "02",sum, moodScore);
                      }
                    ),
                    SizedBox(width: 20),
                    Day("03"),
                    SizedBox(width: 20),
                    Day("04"),
                    SizedBox(width: 20),
                    Day("05"),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Day("06"),
                    SizedBox(width: 20),
                    Day("07"),
                    SizedBox(width: 20),
                    Day("08"),
                    SizedBox(width: 20),
                    Day("09"),
                    SizedBox(width: 20),
                    Day("10"),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Day("11"),
                    SizedBox(width: 20),
                    Day("12"),
                    SizedBox(width: 20),
                    Day("13"),
                    SizedBox(width: 20),
                    Day("14"),
                    SizedBox(width: 20),
                    Day("15"),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Day("16"),
                    SizedBox(width: 20),
                    Day("17"),
                    SizedBox(width: 20),
                    Day("18"),
                    SizedBox(width: 20),
                    Day("19"),
                    SizedBox(width: 20),
                    Day("20"),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Day("21"),
                    SizedBox(width: 20),
                    Day("22"),
                    SizedBox(width: 20),
                    Day("23"),
                    SizedBox(width: 20),
                    Day("24"),
                    SizedBox(width: 20),
                    Day("25"),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Day("26"),
                    SizedBox(width: 20),
                    Day("27"),
                    SizedBox(width: 20),
                    Day("28"),
                    SizedBox(width: 20),
                    Day("29"),
                    SizedBox(width: 20),
                    Day("30"),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Day("31"),
                  ],
                ),
              ],
            ),
          ),
      ),
    );
  }

}