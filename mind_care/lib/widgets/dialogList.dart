import 'package:flutter/material.dart';


Widget dialogList(context, String date, int sum, List<int> moodScore)
{
  
                                        sum>3 ? InkWell(
                                                onTap: () {
                                                  Navigator.of(context).pop();
                                              },
                                              child:  Container(
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
                                                child: Text("You need t take a break!", style: TextStyle(fontSize: 20),),
                                              ),
                                            ):
                                            Container();
                        showDialog(
                          context: context, 
                          builder: (ctx)=> AlertDialog(
                            content: Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.width * 0.6,
                                child: Column(
                                  children: <Widget>[
                                      Expanded(
                                        child: ListView(
                                            shrinkWrap: true,
                                            children: <Widget>[
                                              RaisedButton(
                                                onPressed: ()
                                                {
                                                  // newColor=Colors.yellow[100];
                                                  // Day(newColor);
                                                  moodScore.add(1);
                                                  Navigator.of(ctx).pop();
                                                }, 
                                               
                                                  color: Colors.yellow[100],
                                                padding: EdgeInsets.all(10.0),
                                                shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(8.0),
                                                          side: BorderSide(color: Colors.grey,)
                                                          ),
                                                  child: Text('Good', 
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20.0,
                                                    ),
                                                    ),
                                                ),
                                                
                                                SizedBox(
                                                  height: 10,
                                                ),

                                                RaisedButton(
                                                onPressed: (){
                                                  moodScore.add(2);
                                                  Navigator.of(ctx).pop();
                                                }, 
                                                child: Text('Better', 
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20.0,
                                                  ),
                                                  ),
                                                color: Colors.pink[100],
                                                padding: EdgeInsets.all(10.0),
                                                shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(8.0),
                                                          side: BorderSide(color: Colors.grey,)
                                                          ),
                                                ),

                                                SizedBox(
                                                  height: 10,
                                                ),

                                                RaisedButton(
                                                onPressed: (){
                                                   moodScore.add(3);
                                                  Navigator.of(ctx).pop();
                                                }, 
                                                child: Text('Just fine', 
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20.0,
                                                  ),
                                                  ),
                                                color: Colors.purple[100],
                                                padding: EdgeInsets.all(10.0),
                                                shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(8.0),
                                                          side: BorderSide(color: Colors.grey,)
                                                          ),
                                                ),

                                                SizedBox(
                                                  height: 10,
                                                ),

                                                RaisedButton(
                                                onPressed: (){
                                                   moodScore.add(2);
                                                  Navigator.of(ctx).pop();
                                                }, 
                                                child: Text('Not well', 
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20.0,
                                                  ),
                                                  ),
                                                color: Colors.redAccent[100],
                                                padding: EdgeInsets.all(10.0),
                                                shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(8.0),
                                                          side: BorderSide(color: Colors.grey,)
                                                          ),
                                                ),
                                            ]
                                        )
                                      )
                                  ]
                                ),
                            ),
                          )
    );
}