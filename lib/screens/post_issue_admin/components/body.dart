import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:sih/screens/issue_description_admin/issue_description_admin_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _subjectIssueDescription = TextEditingController();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 9, 82),
      body: SafeArea(
        // left: true,
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                // ListView(
                children: <Widget>[
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Response (in 200 words)',
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                    controller: _subjectIssueDescription,
                    decoration: InputDecoration(
                        filled: true, //<-- SEE HERE
                        fillColor: Colors.white,
                        // icon: Icon(Icons.email),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText:
                        "Solution......For further details..Contact us....",
                        hintStyle: const TextStyle(color: Colors.grey)),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: AnimatedButton(
                      height: 30,
                      width: 150,
                      text: ' Post Response ',
                      isReverse: true,
                      selectedTextColor: const Color.fromARGB(255, 2, 9, 82),
                      textStyle: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                      gradient: const LinearGradient(colors: [
                        Colors.white,
                        Colors.white,
                      ]),
                      borderRadius: 8,
                      borderColor: Colors.white,
                      borderWidth: 2,
                      onPress: () async {
                        Navigator.pushNamed(context, IssueDescriptionAdminScreen.route);
                      },
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}







