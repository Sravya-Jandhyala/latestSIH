import 'package:flutter/material.dart';
import 'package:sih/screens/issue_description_admin/components/body.dart';

class IssueDescriptionAdminScreen extends StatefulWidget {
  const IssueDescriptionAdminScreen({Key? key}) : super(key: key);
  static final String route = "/issuesdescadmin";
  @override
  State<IssueDescriptionAdminScreen> createState() => _IssueDescriptionAdminScreenState();
}

class _IssueDescriptionAdminScreenState extends State<IssueDescriptionAdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Body(),
    );
  }
}
