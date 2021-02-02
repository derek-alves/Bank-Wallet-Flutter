import 'package:flutter/material.dart';
import 'package:bankApp/components/ButtonBig.dart';

class MainButtonsBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: [
        ButtonBig(
          text: "Pagar",
          color: Color.fromRGBO(255, 93, 158, 1.0),
          imagePath: "pay_icon.png",
        ),
        ButtonBig(
          text: "Transferir",
          color: Color.fromRGBO(143, 113, 255, 1.0),
          imagePath: "pay_icon.png",
        ),
        ButtonBig(
          text: "Contas",
          color: Color.fromRGBO(63, 239, 239, 1.0),
          imagePath: "pay_icon.png",
        ),
      ],
    );
  }
}
