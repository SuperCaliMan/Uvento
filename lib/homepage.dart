
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uvento/MyColor.dart';
import 'package:uvento/calendar/OneLineCalendarWidget.dart';
import 'package:uvento/header.dart';
import 'package:uvento/listAllEvents/EventListWidget.dart';
import 'package:uvento/popularEvents/PopularEventListWidget.dart';


class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _mainPage createState() => _mainPage();
}

class _mainPage extends State<MainPage> {
  int currentIndex;
  DateTime data = DateTime.now();

  List<BubbleBottomBarItem> _itemBottomBar = [
    BubbleBottomBarItem(
        icon: Icon(
          Icons.home,
          color: Colors.white,
        ),
        title: Text(
          "Home",
          style: TextStyle(color: MyColor.buttonActiveColor),
        ),
        activeIcon: Icon(Icons.home, color: MyColor.buttonActiveColor),
        backgroundColor: MyColor.bgColorBubble),
    BubbleBottomBarItem(
        icon: Icon(
          Icons.search,
          color: Colors.white,
        ),
        title: Text(
          "Search",
          style: TextStyle(color: MyColor.buttonActiveColor),
        ),
        activeIcon: Icon(Icons.search, color: MyColor.buttonActiveColor),
        backgroundColor: MyColor.bgColorBubble),
    BubbleBottomBarItem(
        icon: Icon(
          Icons.star_border,
          color: Colors.white,
        ),
        title: Text(
          "Favorite",
          style: TextStyle(color: MyColor.buttonActiveColor),
        ),
        activeIcon: Icon(Icons.star_border, color: MyColor.buttonActiveColor),
        backgroundColor: MyColor.bgColorBubble),
  ];

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: MyColor.bgColor,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: <Widget>[
            header(),
            OneLineCalendarWidget(
              dataSelectionCallBack: (dataSelected) {
                setState(() {
                  data = dataSelected;
                });
              },
            ),
            EventListWidget(),
            PopularEventListWidget(data),
          ],
        ),
      ),
      bottomNavigationBar: BubbleBottomBar(
          backgroundColor: MyColor.bottomBarColor,
          opacity: 1,
          currentIndex: currentIndex,
          onTap: changePage,
          elevation: 8,
          iconSize: 27,
          items: _itemBottomBar),
    );
  }
}
