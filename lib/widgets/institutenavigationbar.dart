import 'package:flutter/material.dart';
import 'package:sih/screens/institute_profile/institute_profile_screen.dart';
import 'package:sih/screens/institute_register/institute_register_screen.dart';
import 'package:sih/widgets/HelpScreen.dart';

class InstituteNavigationBar extends StatefulWidget {
  const InstituteNavigationBar({Key? key}) : super(key: key);

  @override
  State<InstituteNavigationBar> createState() => _InstituteNavigationBarState();
}

final String name='InstituteName';
final String email='inst123@gmail.com';

class _InstituteNavigationBarState extends State<InstituteNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(name),
            accountEmail: Text(email),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://w7.pngwing.com/pngs/726/185/png-transparent-johns-hopkins-university-policy-government-agency-regulation-student-building-text-people.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              image: DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1554147090-e1221a04a025?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aG9yaXpvbnRhbCUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.pushNamed(context, InstituteProfileScreen.route);
              }
          ),
          ListTile(
              leading: Icon(Icons.edit),
              title: Text('Edit Details'),
              onTap: () {
                Navigator.pushNamed(context, InstituteRegisterScreen.route);
              }
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  HelpPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () => print('Logout'),
          ),

        ],
      ),
    );
  }
}
