import 'package:flutter/material.dart';
import 'package:sih/screens/institute_profile/components/body.dart';

class InstituteProfileScreen extends StatefulWidget {
  const InstituteProfileScreen({Key? key}) : super(key: key);
  static final String route = "/instprofile";
  @override
  State<InstituteProfileScreen> createState() => _InstituteProfileScreenState();
}

class _InstituteProfileScreenState extends State<InstituteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
