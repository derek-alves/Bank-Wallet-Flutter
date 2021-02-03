import 'package:bankApp/components/MainButtonsBar.dart';
import 'package:flutter/material.dart';
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
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                titleSpacing: 25,
                backgroundColor: Colors.purple[700],
                elevation: 0,
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back',
                      style: TextStyle(fontSize: 13),
                    ),
                    Text(
                      'Nestor Jerez',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                actions: [
                  Stack(
                    children: [
                      FlatButton(
                        onPressed: () {},
                        child: Stack(
                          children: [
                            Container(
                              height: 38,
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
                        left: 22,
                        bottom: 42,
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
              body: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 500,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
