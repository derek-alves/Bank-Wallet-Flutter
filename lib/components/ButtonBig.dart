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
    return Center(
      child: Container(
        width: 90,
        height: 90,
        child: FlatButton(
          onPressed: () {},
          child: Column(
            children: [
              Container(
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
        ),
      ),
    );
  }
}
