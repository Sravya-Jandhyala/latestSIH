import 'package:flutter/material.dart';
import 'package:sih/screens/signup/signup_screen.dart';
import 'package:sih/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SignupScreen.route,
      routes: routes,
    );
  }
}
