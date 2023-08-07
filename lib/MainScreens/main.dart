import 'package:flutter/material.dart';
import 'package:shopping_list/MainScreens/login/welcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 60, 164, 83),
        primaryColorDark: Color.fromARGB(255, 20, 93, 10),
        primaryColorLight: Color.fromARGB(255, 109, 174, 128),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color.fromARGB(255, 27, 195, 63),
          secondary: const Color(0xffedecee),
          tertiary: Color.fromARGB(111, 43, 213, 136),
          background: const Color(0xffffffff),
        ),
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
          displayMedium: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
          displaySmall: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).primaryColor),
      body: Center(
        child: Text('Hello World!!'),
      ),
    );
  }
}
