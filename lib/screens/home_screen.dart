import 'package:flutter/material.dart';
import 'package:messenger_ui/models/message_model.dart';
import 'package:messenger_ui/screens/RecentChats.dart';
import 'package:messenger_ui/screens/search_in_messages.dart';
import '../models/user_model.dart';
import '../models/user_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      appBar: new AppBar(
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Text(
            "Messaging",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 30.0,
                letterSpacing: 1.5),
          ),
        ),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            iconSize: 30.0,
          )
        ],
      ),
      body: new Column(children: <Widget>[
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SearchMeassages(),
          ),
        ),
        new Container(child: RecentsChats()),
      ]),
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        currentIndex: _currentIndex ,
        iconSize: 30.0,
        unselectedItemColor: Colors.blueGrey.shade600,
        selectedItemColor: Colors.white,
        onTap: (index){
          setState(() {
            _currentIndex = index ;
          });
        },
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
              icon: new Icon(Icons.people),
              title: new Text('People'),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.chat),
              title: new Text("Chats"),
            ),
            new BottomNavigationBarItem(
              icon : new Icon(Icons.settings),
              title: new Text("Settings"),
            )
          ]),
    );
  }
}
