import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final Color color = Color.fromRGBO(162, 171, 189, 1.0);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category,
              color: color,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
              color: color,
            ),
            label: 'Charts',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
              color: color,
            ),
            label: 'Alerts',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
              color: color,
            ),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
