import 'package:flutter/material.dart';
import 'package:sih/screens/issue_response/components/body.dart';

class IssueResponseScreen extends StatefulWidget {
  const IssueResponseScreen({Key? key}) : super(key: key);
  static final String route = "/issueresponse";
  @override
  State<IssueResponseScreen> createState() => _IssueResponseScreenState();
}

class _IssueResponseScreenState extends State<IssueResponseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Body(),
    );
  }
}
