import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_ui/models/message_model.dart';

class RecentsChats extends StatefulWidget {
  RecentsChats({Key key}) : super(key: key);
  @override
  _RecentsChatsState createState() => _RecentsChatsState();
}

class _RecentsChatsState extends State<RecentsChats> {
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Container(
        decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.only(
                bottomLeft: Radius.circular(35.0),
                bottomRight: Radius.circular(35.0))),
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0, right: 12.0, left: 12.0 , bottom: 5.0),
          child: new ListView.builder(
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index) {
              return new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage(chats[index].sender.imageUrl),
                    ),
                  ),
                  new Expanded(
                    child: new Column(
                      children: <Widget>[
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Text(
                              chats[index].sender.name,
                              style: new TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800),
                            ),
                            new Text(
                              chats[index].time,
                              style: new TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        new Align(
                          alignment: Alignment.topLeft,
                          child: new Text(
                            chats[index].text,
                            style: new TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                                fontWeight: chats[index].isLiked ? FontWeight.w100 : FontWeight.w800),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
