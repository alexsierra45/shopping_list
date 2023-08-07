import 'package:flutter/material.dart';
import 'package:shopping_list/Utils/TextApp.dart';
import 'package:shopping_list/Widgets/Designs/DesignWidgets.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: DesignWidgets().lienarGradientMain(context),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DesignWidgets().titleCustomed(context),
                _loginButton(context),
                _signUpButton(context)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _loginButton(BuildContext context) {
  return Container(
      padding: EdgeInsets.only(top: 50, bottom: 25),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, '/login'),
        style: ElevatedButton.styleFrom(
          elevation: 10,
          padding: EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: Colors.white,
        ),
        child: Text(
          TextApp.LOGIN,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 18,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
          ),
        ),
      ));
}

Widget _signUpButton(BuildContext context) {
  return Container(
      width: MediaQuery.of(context).size.width,
      child: OutlinedButton(
        onPressed: () => Navigator.pushNamed(context, '/signup'),
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.all(15)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          side: MaterialStateProperty.all(
            BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
        ),
        child: Text(
          TextApp.SIGNUP,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
          ),
        ),
      ));
}
