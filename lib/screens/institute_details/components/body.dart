import 'package:flutter/material.dart';
import 'package:sih/screens/individual_institute_details/individual_institute_details_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  final List<String> names = <String>['VR Siddhartha', 'KLU', 'SRM AP'];
  final List<int> ids = <int>[101, 102, 103];

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 2, 9, 82),
        appBar: AppBar(
          title: Text('All Institution Details'),
          backgroundColor: Color.fromARGB(255, 2, 9, 82),
        ),
        //body:
        body: Column(children: <Widget>[
          ListTile(
            onTap: null,
            leading: Expanded(
                child: Text(
                  "First Name",
                  style: TextStyle(color: Colors.white),
                )),
            title: Expanded(
                child: Text(
                  "Last Name",
                  style: TextStyle(color: Colors.white),
                )),
          ),
          Expanded(
            child: Container(
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: names.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    //return new ListTile(
                    tileColor: Colors.white,
                    title: Row(children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(
                            15), //apply padding to all four sides
                        child: Text('${ids[index]}'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(
                            15), //apply padding to all four sides
                        child: Text('${names[index]}'),
                      ),
                    ]),
                    trailing: IconButton(
                      icon: const Icon(Icons.forward),
                      color: Color.fromARGB(255, 2, 9, 82),
                      tooltip: 'View Details',
                      onPressed: () {
                        Navigator.pushNamed(context,IndividualInstDetailsScreen.route);
                      },
                    ),
                  );
                }, //itemBuilder
                separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
              ),
            ),
          ),
        ]));
  }
}
