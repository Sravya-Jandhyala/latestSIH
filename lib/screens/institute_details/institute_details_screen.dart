import 'package:flutter/material.dart';
import 'package:sih/screens/institute_details/components/body.dart';

class InstituteDetailsScreen extends StatefulWidget {
  const InstituteDetailsScreen({Key? key}) : super(key: key);
  static final String route = "/instdetails";
  @override
  State<InstituteDetailsScreen> createState() => _InstituteDetailsScreenState();
}

class _InstituteDetailsScreenState extends State<InstituteDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
