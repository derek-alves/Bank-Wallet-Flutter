import 'package:bankApp/components/MainButtonsBar.dart';
import 'package:flutter/material.dart';

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
    return WillPopScope(
        onWillPop: null,
        child: Container(
          color: Colors.purple,
          child: Stack(
            children: [
              Container(
                height: 300,
                child: Text('ola mundo'),
              ),
              Scaffold(
                backgroundColor: Colors.transparent,
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(150),
                  child: AppBar(
                    titleSpacing: 25,
                    backgroundColor: Colors.purple,
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
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                        child: IconButton(
                          icon: Icon(Icons.people),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
                body: Container(
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: MainButtonsBar(),
                ),
              ),
            ],
          ),
        ));
  }
}
