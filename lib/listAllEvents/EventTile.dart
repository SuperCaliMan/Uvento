import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uvento/MyColor.dart';
import 'package:uvento/model/Event.dart';

class EventTile extends StatelessWidget {
  CategoryType _category;
  EventTile(this._category);

  IconData _setIcon(CategoryType categoryType) {
    switch (categoryType) {
      case CategoryType.Concert:
        return Icons.music_note;
        break;

      case CategoryType.Education:
        return Icons.school;
        break;

      case CategoryType.Health:
        return Icons.healing;
        break;

      case CategoryType.Sports:
        return Icons.directions_run;
        break;

      case CategoryType.Art:
        return Icons.brush;
        break;
    }
  }

  void _clickRow(CategoryType categoryType) {
    print(categoryType.toString().split(".").last);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 140,
        padding: EdgeInsets.all(10),
        child: InkWell(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              color: MyColor.tileBg,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    _setIcon(_category),
                    color: Colors.white,
                    size: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      _category.toString().split(".").last,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Muli Bold'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          onTap: () => _clickRow(_category),
        ));
  }
}
