import 'package:bankApp/components/MainButtonsBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

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
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return WillPopScope(
      onWillPop: null,
      child: Container(
        color: Colors.purple[700],
        child: Stack(
          children: [
            Positioned(
                top: 28, left: 9, child: Image.asset('assets/arrow.png')),
            Positioned(
              top: 130,
              height: 140,
              child: Container(
                child: Image.asset('assets/circle.png'),
              ),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(90),
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
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
                                  height: 45,
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
                            left: 20,
                            bottom: 38,
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
                        height: 550,
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
                            margin: EdgeInsets.only(top: 100),
                            child: MainButtonsBar(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 30,
                    left: 30,
                    height: 150,
                    width: 330,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular((10)),
                      ),
                      color: Color.fromRGBO(130, 172, 255, 1.0),
                      elevation: 5,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total Balance',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '\$3,729.00',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 33,
                    left: 120,
                    child: Container(
                      height: 160,
                      width: 320,
                      child: Image.asset(
                        "assets/avatar.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
