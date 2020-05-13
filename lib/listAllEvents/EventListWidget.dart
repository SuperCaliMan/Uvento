import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uvento/listAllEvents/EventTile.dart';
import 'package:uvento/model/Event.dart';

class EventListWidget extends StatelessWidget {
  List<CategoryType> _eventsList = CategoryType.values;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 25),
          child: Text(
            "All Events",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontFamily: 'Muli Regular'),
          ),
        ),
        Container(
          height: 140,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 25),
          child: ListView.builder(
            itemBuilder: (contex, position) {
              return EventTile(_eventsList[position]);
            },
            itemCount: _eventsList.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
