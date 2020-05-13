import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uvento/MyColor.dart';

class header extends StatelessWidget {
  void _touchDashboard() {
    print("dashboard");
  }

  void _touchNotification() {
    print("notify");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(
        left: 25,
        right: 25,
        top: 32.0,
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 0,
            child: Row(
              children: <Widget>[
                Image.asset(
                  "assets/images/logo.png",
                  width: 24,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      text: "UVE",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontFamily: 'Muli-Black'),
                      children: [
                        TextSpan(
                            text: "NTO",
                            style: TextStyle(
                                color: MyColor.yellow,
                                fontSize: 23,
                                fontFamily: 'Muli-Black')),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: _touchNotification,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                    ),
                  ),
                ),
                InkWell(
                  child: Icon(
                    Icons.dashboard,
                    color: Colors.white,
                  ),
                  onTap: _touchDashboard,
                )
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 27),
                      child: Text(
                        "Hello, Alberto !",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Muli Regular'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        "Let's explore what's happening nearby",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Muli Regular'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                flex: 0,
                child: Container(
                  alignment: Alignment.centerRight,
                  width: 60,
                  height: 60,
                  decoration: new BoxDecoration(
                    color: const Color(0xff7c94b6),
                    image: new DecorationImage(
                      image: new NetworkImage(
                          'https://www.pngkey.com/png/full/114-1149878_setting-user-avatar-in-specific-size-without-breaking.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(50.0)),
                    border: new Border.all(
                      color: MyColor.yellowCalendarBg,
                      width: 2.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
