import 'package:flutter/material.dart';
import 'package:sih/screens/issue_details/components/body.dart';

class IssueDetailsScreen extends StatefulWidget {
  const IssueDetailsScreen({Key? key}) : super(key: key);
  static final String route = "/issuedetails";
  @override
  State<IssueDetailsScreen> createState() => _IssueDetailsScreenState();
}

class _IssueDetailsScreenState extends State<IssueDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
