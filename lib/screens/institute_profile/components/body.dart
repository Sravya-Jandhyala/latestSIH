import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}
final int id = 101;
final String name = 'InstitueName';
final String email = 'inst123@gmail.com';
final String contactnum = '1234567890';
final String type = 'Apartment';
final String category = 'School';
final int size = 3;
final int area = 200;
final int yoc = 2001;
final int rooms = 100;
final int labs = 100;
final int capacity = 1000;
final String address = 'd.no 456, street 765';
final String city = 'Vijayawada';
final String state = 'Andhra Pradesh';
final String pincode = '520011';


class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 9, 82),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    margin: const EdgeInsets.only(
                      top: 100,
                      bottom: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(2, 2),
                          blurRadius: 10,
                        ),
                      ],
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/inst.jpg",
                        ),
                      ),
                    ),
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const Text(
                    "Admin",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child:Container(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 24,
                    right: 24,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: new SingleChildScrollView(
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "PROFILE",
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(height: 16,),
                          listProfile(Icons.person, "Institute ID", '$id'),
                          listProfile(Icons.person, "Full Name", name),
                          listProfile(Icons.apartment, "Type", type),
                          listProfile(Icons.account_balance, "Category", category),
                          listProfile(Icons.apartment, "Size", '$size'),
                          listProfile(Icons.location_city, "Area", '$area'),
                          listProfile(Icons.date_range, "Year of Construction", '$yoc'),
                          listProfile(Icons.people_alt_outlined, "Capacity", '$capacity'),
                          listProfile(Icons.sensor_door_outlined, "Rooms", '$rooms'),
                          listProfile(Icons.sensor_door_outlined, "Labs", '$labs'),
                          listProfile(Icons.location_on_rounded, "Address", address),
                          listProfile(Icons.location_on_rounded, "City", city),
                          listProfile(Icons.location_on_rounded, "State", state),
                          listProfile(Icons.location_on_rounded, "Pincode", pincode),
                          listProfile(Icons.email, "Email", email),
                          listProfile(Icons.phone, "ContactNumber", contactnum),
                        ],
                      ),
                  ),
              ),
            ),
              ],
                      )
                  )
              );

  }
  Widget listProfile(IconData icon, String text1, String text2) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 20,
          ),
          const SizedBox(width: 24,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: const TextStyle(
                  color: Colors.black87,
                  fontFamily: "Montserrat",
                  fontSize: 14,
                ),
              ),
              Text(
                text2,
                style: const TextStyle(
                  color: Colors.black87,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


