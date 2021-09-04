import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int _selectedIndex = 0;  
  List<Map<String, Object>> _pages;

  @override
void initState()
{
  _pages=[ 
   {'page':Text('Home'),'title':'Home'},                                        
   {'page':Text('Survey'),'title':'Survey'},   //add screen here
   {'page':Text('Articles'),'title':'Articles'},
   {'page':Text('Mood Tracker'),'title':'Mood Tracker'},
 ];
  super.initState();
}

  void _selectPage(int index) {  
    setState(() {  
      _selectedIndex = index;  
    });  
  }  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * .1,
          title: Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(_pages[_selectedIndex]['title'], 
            style: TextStyle(fontSize: 25,),
            ),
          ),
          backgroundColor: Color(0xff9ED5A5),
          ),
          body: _pages[_selectedIndex]['page'],  
          bottomNavigationBar: BottomNavigationBar(
            onTap: _selectPage,
            iconSize: 30,  
            elevation: 5, 
            backgroundColor: Color(0xff9ED5A5),
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.white,
            currentIndex: _selectedIndex,
            type:BottomNavigationBarType.shifting,

            items: [
              BottomNavigationBarItem(       
                icon: Icon(Icons.home),
                title: Text('Home'),
                backgroundColor: Color(0xff9ED5A5),
              ),
              BottomNavigationBarItem(          
                icon: Icon(Icons.assessment_outlined),
                title: Text('Survey'),
                backgroundColor: Color(0xff9ED5A5),
              ),
              BottomNavigationBarItem(          
                icon: Icon(Icons.auto_stories),
                title: Text('Articles'),
                backgroundColor: Color(0xff9ED5A5),
              ),
              BottomNavigationBarItem(         
                icon: Icon(Icons.calendar_today),
                title: Text('Mood tracker'),
                backgroundColor: Color(0xff9ED5A5),
              ),
            ],
            ),
      );
  }  
  }

