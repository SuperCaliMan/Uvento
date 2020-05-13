import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uvento/MyColor.dart';
import 'package:uvento/homepage.dart';

class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //lock app in portrait mode
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    // to hide both:
    return Material(
      type: MaterialType.transparency,
      child: new Container(
        decoration: BoxDecoration(
            color: MyColor.bgColor,
            image: DecorationImage(
                image: AssetImage("assets/images/bg.png"), fit: BoxFit.fill)),
        alignment: Alignment.center,
        child: Center(
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Image.asset("assets/images/logo.png"),
                        ),
                      )),
                  Container(
                      //color: Colors.green,
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 32, top: 24),
                        child: RichText(
                          text: TextSpan(
                            text: "UVE",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontFamily: 'Muli Bold'),
                            children: [
                              TextSpan(
                                  text: "NTO",
                                  style: TextStyle(
                                      color: MyColor.yellow,
                                      fontSize: 28,
                                      fontFamily: 'Muli Bold'))
                            ],
                          ),
                        ),
                      )),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 32, top: 24, right: 32, bottom: 24),
                      child: Text(
                        "There's a lot happening around you! Our mission is to provide what's happening near you!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 32),
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ),
                          InkWell(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding: const EdgeInsets.only(left: 24),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  )),
                            ),
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainPage())),
                          ),
                        ],
                      ))
                ],
              )),
        ),
      ),
    );
  }
}
