import 'package:flutter/material.dart';
import 'package:sih/screens/issue_details_description/components/body.dart';

class IssueDetailsDescriptionScreen extends StatefulWidget {
  const IssueDetailsDescriptionScreen({Key? key}) : super(key: key);
  static final String route = "/issuedetailsdesc";
  @override
  State<IssueDetailsDescriptionScreen> createState() => _IssueDetailsDescriptionScreenState();
}

class _IssueDetailsDescriptionScreenState extends State<IssueDetailsDescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Body(),
    );
  }
}
