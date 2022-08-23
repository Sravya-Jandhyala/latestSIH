import 'package:flutter/material.dart';
import 'package:sih/screens/institute_register/components/body.dart';

class InstituteRegisterScreen extends StatefulWidget {
  const InstituteRegisterScreen({Key? key}) : super(key: key);
  static final String route = "/instreg";
  @override
  State<InstituteRegisterScreen> createState() =>
      _InstituteRegisterScreenState();
}

class _InstituteRegisterScreenState extends State<InstituteRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
