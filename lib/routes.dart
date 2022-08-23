import 'package:flutter/material.dart';
import 'package:sih/screens/admin_home_page/admin_home_page_screen.dart';
import 'package:sih/screens/admin_profile/admin_profile_screen.dart';
import 'package:sih/screens/admin_register/admin_register_screen.dart';
import 'package:sih/screens/all_issues_admin/all_issues_admin_screen.dart';
import 'package:sih/screens/individual_institute_details/individual_institute_details_screen.dart';
import 'package:sih/screens/institute_details/institute_details_screen.dart';
import 'package:sih/screens/institute_profile/institute_profile_screen.dart';
import 'package:sih/screens/issue_description_admin/issue_description_admin_screen.dart';
import 'package:sih/screens/issue_details/issue_details.dart';
import 'package:sih/screens/issue_details_description/issue_details_description_screen.dart';
import 'package:sih/screens/issue_response/issue_response_screen.dart';
import 'package:sih/screens/locations/locations.dart';
import 'package:sih/screens/login_page/login_page_screen.dart';
import 'package:sih/screens/notifications/notifications_screen.dart';
import 'package:sih/screens/post_issue/post_issue_screen.dart';
import 'package:sih/screens/post_issue_admin/post_issue_admin_screen.dart';
import 'package:sih/screens/signup/signup_screen.dart';
import 'package:sih/screens/institute_register/institute_register_screen.dart';
import 'package:sih/screens/institute_home_page/home_screen.dart';
import 'package:sih/widgets/HelpScreen.dart';

final Map<String, WidgetBuilder> routes = {
  SignupScreen.route: (context) => SignupScreen(),
  InstituteRegisterScreen.route: (context) => InstituteRegisterScreen(),
  AdminRegisterScreen.route: (context) => AdminRegisterScreen(),
  HomeScreen.route: (context) => HomeScreen(),
  PostIssueScreen.route: (context) => PostIssueScreen(),
  IssueDetailsScreen.route: (context) => IssueDetailsScreen(),
  AdminHomePageScreen.route: (context) => AdminHomePageScreen(),
  InstituteDetailsScreen.route: (context) => InstituteDetailsScreen(),
  LoginPageScreen.route: (context) => LoginPageScreen(),
  LocationsScreen.route: (context) => LocationsScreen(),
  InstituteProfileScreen.route: (context) => InstituteProfileScreen(),
  AdminProfileScreen.route: (context) => AdminProfileScreen(),
  IssueDetailsDescriptionScreen.route: (context) => IssueDetailsDescriptionScreen(),
  IssueResponseScreen.route: (context) => IssueResponseScreen(),
  IndividualInstDetailsScreen.route: (context) => IndividualInstDetailsScreen(),
  NotificationsScreen.route: (context) => NotificationsScreen(),
  AllIssuesAdminScreen.route: (context) => AllIssuesAdminScreen(),
  IssueDescriptionAdminScreen.route: (context) => IssueDescriptionAdminScreen(),
  PostIssueAdminScreen.route: (context) => PostIssueAdminScreen(),
};
