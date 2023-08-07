import 'package:flutter/material.dart';

class DesignWidgets {
  LinearGradient lienarGradientMain(BuildContext context) {
    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Theme.of(context).primaryColorLight,
        Theme.of(context).primaryColor,
      ],
    );
  }

  RichText titleCustomed(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Shopping',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 30,
            color: Colors.white60,
            fontWeight: FontWeight.w700,
          ),
          children: [
            TextSpan(
              text: 'List',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ]),
    );
  }
}
