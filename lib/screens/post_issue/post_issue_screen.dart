import 'package:flutter/material.dart';
import 'package:sih/screens/post_issue/components/body.dart';

class PostIssueScreen extends StatefulWidget {
  const PostIssueScreen({Key? key}) : super(key: key);
  static final String route = "/postissue";
  @override
  State<PostIssueScreen> createState() => _PostIssueScreenState();
}

class _PostIssueScreenState extends State<PostIssueScreen> {
  @override
  Widget build(BuildContext context) {
    print("Hello");
    return Scaffold(
      body: Body(),
    );
  }
}
