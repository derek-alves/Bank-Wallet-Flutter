import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Container(
      height: mediaQuery.height * 0.2,
      width: mediaQuery.width * 0.8,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Color.fromRGBO(130, 172, 255, 1.0),
        elevation: 5,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Balance',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: mediaQuery.width * 0.039,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: mediaQuery.height * 0.01),
                  Text(
                    '\$3,729.00',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: mediaQuery.width * 0.050,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              height: mediaQuery.height * 0.3,
              width: mediaQuery.width * 0.43,
              child: Image.asset(
                "assets/avatar.png",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
