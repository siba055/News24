import 'package:flutter/material.dart';

class Maindrawer extends StatefulWidget {
  const Maindrawer({Key? key}) : super(key: key);

  @override
  State<Maindrawer> createState() => _MaindrawerState();
}

class _MaindrawerState extends State<Maindrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 270,
      backgroundColor: Colors.black87,
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.black12),
            accountName: Text(
              "shiva",
              style: TextStyle(
                  fontSize: 23.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              "mailid",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            currentAccountPicture: CircleAvatar(
                maxRadius: 30.0,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.person,
                  size: 50.0,
                )),
          ),
          GestureDetector(
            onTap: () {},
            child: const ListTile(
              leading: Icon(
                Icons.category,
                color: Colors.blue,
              ),
              title: Text(
                'Latest',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const ListTile(
              leading: Icon(
                Icons.shopping_bag_outlined,
                color: Color.fromARGB(255, 0, 140, 255),
              ),
              title: Text(
                'Orders',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const ListTile(
              leading: Icon(
                Icons.contact_mail,
                color: Colors.blue,
              ),
              title: Text(
                'contact',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const ListTile(
              leading: Icon(
                Icons.help_center,
                color: Colors.blue,
              ),
              title: Text(
                'Help',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.blue,
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0),
              ),
            ),
          ),
          GestureDetector(
            onTap: (() {
              setState(() {});
            }),
            child: const ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.blue,
              ),
              title: Text(
                'Log Out',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
