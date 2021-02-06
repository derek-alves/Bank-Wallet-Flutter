import 'package:flutter/material.dart';

class ButtonBig extends StatelessWidget {
  // final icon, text, color;
  final String text;
  final String imagePath;
  final Color color;

  const ButtonBig({this.text, this.color, this.imagePath});
  @override
  Widget build(BuildContext context) {
    // ButtonBig({this.icon, this.title});
    return Container(
      width: 90,
      height: 90,
      margin: EdgeInsets.only(
        right: 4.5,
        left: 4.5,
      ),
      child: FlatButton(
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 25.82,
              height: 25.82,
              margin: EdgeInsets.only(
                bottom: 5,
              ),
              child: Image.asset(imagePath),
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 1),
          ),
        ],
      ),
    );
  }
}
