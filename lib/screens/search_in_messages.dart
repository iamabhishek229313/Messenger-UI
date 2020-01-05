import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class SearchMeassages extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Container(
      // Search Container
      height: 45.0,
      decoration: new BoxDecoration(
        color: Colors.lightBlue.shade50,
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: new TextField(
          decoration: new InputDecoration(
            border: InputBorder.none,
              icon: new Icon(
                Icons.search,
                color: Colors.black,
              ),
              hintText: "Search in Messages"),
        ),
      ),
    );
  }
}
