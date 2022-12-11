import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: const [
          DrawerHeader(
            child: Icon(Icons.ac_unit_rounded),
          ),
          ListTile(
            leading: Icon(Icons.access_alarm_sharp),
            title: Text("Darshboard"),
          ),
          ListTile(
            leading: Icon(Icons.account_balance_wallet_sharp),
            title: Text("Explore"),
          ),
          ListTile(
            leading: Icon(Icons.nature_people),
            title: Text("Logout"),
          ),
        ],
      ),
    );
  }
}
