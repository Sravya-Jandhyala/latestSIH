import 'package:flutter/material.dart';
import 'package:sih/screens/individual_institute_details/components/body.dart';

class IndividualInstDetailsScreen extends StatefulWidget {
  const IndividualInstDetailsScreen({Key? key}) : super(key: key);
  static final String route = "/indinstdetails";
  @override
  State<IndividualInstDetailsScreen> createState() => _IndividualInstDetailsScreenState();
}

class _IndividualInstDetailsScreenState extends State<IndividualInstDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Body(),
    );
  }
}
