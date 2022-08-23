import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  HelpPage({Key? key}) : super(key: key);

  @override
  State<HelpPage> createState() => _HelpPageState();
}

enum Domain { infrastructure, classEquipment, labEquipment, other }

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 2, 9, 82),
        body: Center(
          child: SafeArea(
              child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: SingleChildScrollView(
                      child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                        const Text(
                          'HELP',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 36,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        const Text(
                          'Contact',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <Widget>[
                              const Text(
                                'Email : abcd@gmail.com',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              const Text(
                                'Contact : 123456789',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                            ]))
                      ])))),
        ));
  }
}
