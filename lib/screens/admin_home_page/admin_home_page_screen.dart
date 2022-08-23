import 'package:flutter/material.dart';
import 'package:sih/screens/admin_home_page/components/body.dart';

class AdminHomePageScreen extends StatefulWidget {
  const AdminHomePageScreen({Key? key}) : super(key: key);
  static final String route = "/adminhomepage";
  @override
  State<AdminHomePageScreen> createState() => _AdminHomePageScreenState();
}

class _AdminHomePageScreenState extends State<AdminHomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
