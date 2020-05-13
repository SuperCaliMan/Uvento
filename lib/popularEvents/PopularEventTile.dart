import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uvento/MyColor.dart';
import 'package:uvento/model/Event.dart';

class PopularEventTile extends StatelessWidget {
  Event _event;
  var _formatter = DateFormat('MMM d,y');

  PopularEventTile(this._event);

  String _printDate(DateTime date) {
    return _formatter.format(date);
  }

  void _clickEvent() {
    print(_event.title);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            color: MyColor.tileBg,
            padding: EdgeInsets.only(left: 25),
            child: Row(
              children: <Widget>[
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      MergeSemantics(
                        child: Row(
                          children: <Widget>[
                            Flexible(
                              child: Text(
                                _event.title,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                                style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.white,
                                  fontFamily: 'Muli Bold',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 13),
                      MergeSemantics(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.calendar_today,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Flexible(
                              child: Text(
                                _printDate(_event.dateTime),
                                maxLines: 1,
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontFamily: 'Muli Regular'),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 13),
                      MergeSemantics(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Flexible(
                              child: Text(
                                _event.location,
                                maxLines: 1,
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontFamily: 'Muli Regular'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 110,
                  child: Image.network(
                    _event.urlImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      onTap: () => _clickEvent(),
    );
  }
}
