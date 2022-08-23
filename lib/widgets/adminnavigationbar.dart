import 'package:flutter/material.dart';
import 'package:sih/screens/admin_profile/admin_profile_screen.dart';
import 'package:sih/screens/admin_register/admin_register_screen.dart';
import 'package:sih/widgets/HelpScreen.dart';

class AdminNavigationBar extends StatefulWidget {
  const AdminNavigationBar({Key? key}) : super(key: key);
  @override
  State<AdminNavigationBar> createState() => _AdminNavigationBarState();
}
final String name='AdminName';
final String email='admin123@gmail.com';

class _AdminNavigationBarState extends State<AdminNavigationBar> {
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
                  'https://findicons.com/files/icons/2526/bloggers/256/admin.png',
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
                Navigator.pushNamed(context, AdminProfileScreen.route);
              }
          ),
          ListTile(
              leading: Icon(Icons.edit),
              title: Text('Edit Details'),
              onTap: () {
                Navigator.pushNamed(context, AdminRegisterScreen.route);
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
