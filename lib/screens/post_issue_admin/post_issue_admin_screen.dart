import 'package:flutter/material.dart';
import 'package:sih/screens/post_issue_admin/components/body.dart';

class PostIssueAdminScreen extends StatefulWidget {
  const PostIssueAdminScreen({Key? key}) : super(key: key);
  static final String route = "/postissueadmin";
  @override
  State<PostIssueAdminScreen> createState() => _PostIssueAdminScreenState();
}

class _PostIssueAdminScreenState extends State<PostIssueAdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Body(),
    );
  }
}
