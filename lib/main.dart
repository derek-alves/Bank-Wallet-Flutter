import 'package:bankApp/components/MainButtonsBar.dart';
import 'package:bankApp/components/MainCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

import 'components/BottomNavBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final paddingTopAppBar = mediaQuery.height * 0.05;

    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return WillPopScope(
      onWillPop: null,
      child: Container(
        color: Colors.purple[700],
        child: Stack(
          children: [
            Positioned(
              left: mediaQuery.width * 0.80,
              top: mediaQuery.width * 0.3,
              child: RotatedBox(
                quarterTurns: 2,
                child: Image.asset('assets/circle'
                    '.png'),
              ),
            ),
            Positioned(
              top: 28,
              left: 9,
              child: Image.asset('assets/arrow.png'),
            ),
            Positioned(
              top: 110,
              height: 140,
              child: Container(
                child: Image.asset('assets/circle.png'),
              ),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(mediaQuery.height * 0.15),
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, paddingTopAppBar, 0, 0),
                  child: AppBar(
                    titleSpacing: 35,
                    backgroundColor: Colors.purple[700],
                    elevation: 0,
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome Back,',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'Nestor Jerez',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ],
                    ),
                    actions: [
                      Stack(
                        children: [
                          FlatButton(
                            padding: EdgeInsets.fromLTRB(0, 0, 33, 0),
                            onPressed: () {},
                            child: Stack(
                              children: [
                                Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Image.asset(
                                    "assets/profile.png",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            // left: mediaQuery.height * 0.005,
                            // bottom: mediaQuery.height * 0.1,
                            child: Container(
                              width: 11,
                              height: 11,
                              decoration: BoxDecoration(
                                color: Colors.red[700],
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              body: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: mediaQuery.height * 0.63,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey[50],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            margin: EdgeInsets.only(top: 75),
                            child: MainButtonsBar(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MainCard(),
                    ],
                  ),
                ],
              ),
              bottomNavigationBar: BottomNavBar(),
            ),
          ],
        ),
      ),
    );
  }
}
