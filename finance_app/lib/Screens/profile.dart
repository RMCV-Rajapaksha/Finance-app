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
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Color.fromARGB(255, 4, 50, 47),
                  backgroundImage: AssetImage('1.jpg'),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.person,
                        color: Color.fromRGBO(0, 1, 51, 1.000), size: 30),
                    SizedBox(
                      width: 30,
                    ),
                    Text('R.M.C.V',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 1, 51, 1.000),
                        )),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Icon(Icons.email,
                        color: Color.fromRGBO(0, 1, 51, 1.000), size: 30),
                    SizedBox(
                      width: 30,
                    ),
                    Text('google@gmail.com',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 1, 51, 1.000),
                        )),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Icon(Icons.call,
                        color: Color.fromRGBO(0, 1, 51, 1.000), size: 30),
                    SizedBox(
                      width: 30,
                    ),
                    Text('055-2228103',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 1, 51, 1.000),
                        )),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Icon(Icons.lock_clock,
                        color: Color.fromRGBO(0, 1, 51, 1.000), size: 30),
                    SizedBox(
                      width: 30,
                    ),
                    Text('18-05-2024',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 1, 51, 1.000),
                        )),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Icon(Icons.sensor_occupied_sharp,
                        color: Color.fromRGBO(0, 1, 51, 1.000), size: 30),
                    SizedBox(
                      width: 30,
                    ),
                    Text('Student',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 1, 51, 1.000),
                        )),
                  ],
                ),
                Row(
                  children: [
                    Column(),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(0, 1, 51, 1.000),
                      Color.fromRGBO(18, 96, 205, 1),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                width: 120,
                height: 50,
                child: TextButton(
                  onPressed: () {
                    MaterialPageRoute(builder: (context) => MyApp());
                  },
                  child: Text('Logout',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(width: 20),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(0, 1, 51, 1.000),
                      Color.fromRGBO(18, 96, 205, 1),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                width: 120,
                height: 50,
                child: TextButton(
                  onPressed: () {},
                  child: Text('Settings',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromRGBO(0, 1, 51, 1.000),
                  child: Icon(Icons.facebook, size: 30, color: Colors.white),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromRGBO(0, 1, 51, 1.000),
                  child: Icon(Icons.mail, size: 30, color: Colors.white),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromRGBO(0, 1, 51, 1.000),
                  child: Icon(Icons.phone, size: 30, color: Colors.white),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromRGBO(0, 1, 51, 1.000),
                  child: Icon(Icons.message, size: 30, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
