import 'dart:js';

import 'package:finance_app/Screens/login.dart';
import 'package:finance_app/main.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 240,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(0, 1, 51, 1.000),
                  Color.fromRGBO(18, 96, 205, 1),
                ],
                begin: Alignment.topLeft,
                end: Alignment.topRight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: Container(
                      width: 120,
                      height: 120,
                      child: Image.network('images/Profile.png')),
                  // radius: 60,
                  // backgroundImage: AssetImage('images/Profile.png'),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Chamara Vishwajith',
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                    ),
                    Text(
                      'Developer',
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ...List.generate(listTiles.length, (index) {
            final tile = listTiles[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Card(
                elevation: 4,
                shadowColor: Colors.black,
                child: ListTile(
                  leading: Icon(tile.icon),
                  title: Text(tile.title),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: onTapFunctions[index](),
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}

class CustomListTiles {
  final IconData icon;
  final String title;
  CustomListTiles({required this.icon, required this.title});
}

List<CustomListTiles> listTiles = [
  CustomListTiles(icon: Icons.person, title: 'Profile'),
  CustomListTiles(icon: Icons.credit_card, title: 'Payment Methods'),
  CustomListTiles(icon: Icons.settings, title: 'Settings'),
  CustomListTiles(icon: Icons.info_outline_rounded, title: 'About Us'),
  CustomListTiles(icon: Icons.logout, title: 'Logout'),
];

final List<Function()> onTapFunctions = [
  () => print('Profile'),
  () => print('Payment Methods'),
  () => print('Settings'),
  () => print('About'),
  () => print('logout'),
];
