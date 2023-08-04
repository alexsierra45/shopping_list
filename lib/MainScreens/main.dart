import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
      primaryColor: const Color(0xff2c2b50),
      primaryColorDark: const Color(0xff050028),
      primaryColorLight: const Color(0xff57547c),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: const Color(0xffedecee),
        background: const Color(0xffffffff),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ));
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
      appBar: AppBar(),
      body: Center(),
    );
  }
}
