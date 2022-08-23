import 'package:flutter/material.dart';
import 'package:sih/screens/issue_response/issue_response_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 9, 82),
      body: Center(
        /** Card Widget **/
        child: Card(
          elevation: 50,
          shadowColor: Colors.black,
          color: Colors.white,
          child: SizedBox(
            width: 300,
            height: 500,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ), //SizedBox
                  Text(
                    'Issue details to be displayed here',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 2, 9, 82),
                      fontWeight: FontWeight.w500,
                    ), //Textstyle
                  ), //Text
                  const SizedBox(
                    height: 10,
                  ), //SizedBox

                  const SizedBox(
                    height: 10,
                  ), //SizedBox
                  SizedBox(
                    width: 140,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, IssueResponseScreen.route);
                      },
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Color.fromARGB(255, 2, 9, 82))),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Row(
                          children: const [
                            Text('View Response')
                          ],
                        ),
                      ),
                    ),
                  ) //SizedBox
                ],
              ), //Column
            ), //Padding
          ), //SizedBox
        ), //Card
      ), //Center
    );
  }
}
