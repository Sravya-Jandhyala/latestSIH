import 'package:flutter/material.dart';
import 'package:sih/screens/all_issues_admin/components/body.dart';

class AllIssuesAdminScreen extends StatefulWidget {
  const AllIssuesAdminScreen({Key? key}) : super(key: key);
  static final String route = "/allissues";
  @override
  State<AllIssuesAdminScreen> createState() => _AllIssuesAdminScreenState();
}

class _AllIssuesAdminScreenState extends State<AllIssuesAdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Body(),
    );
  }
}
