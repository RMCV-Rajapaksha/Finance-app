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
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Landphone Number',
                        style: TextStyle(
                            color: Color.fromARGB(255, 4, 50, 47),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '055-2224101',
                        style: TextStyle(
                            color: Color.fromARGB(255, 4, 50, 47),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Mobile Number',
                        style: TextStyle(
                            color: Color.fromARGB(255, 4, 50, 47),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '077-9121861',
                        style: TextStyle(
                            color: Color.fromARGB(255, 4, 50, 47),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 300,
            width: 320,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'About',
                          style: TextStyle(
                              color: Color.fromARGB(255, 4, 50, 47),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'I am an undergraduate student at the University of Ruhuna, majoring in Computer Engineering. The program at the Department of Computer Engineering provides me with a solid foundation in both theoretical concepts and practical applications. Eager to explore the dynamic world of technology, I am enthusiastic about learning and applying innovative solutions in the field.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Color.fromARGB(255, 4, 50, 47),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromRGBO(0, 1, 51, 1.000),
                  child: Icon(Icons.facebook,
                      size: 30, color: Color.fromRGBO(18, 96, 205, 1)),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromRGBO(0, 1, 51, 1.000),
                  child: Icon(Icons.mail,
                      size: 30, color: Color.fromRGBO(18, 96, 205, 1)),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromRGBO(0, 1, 51, 1.000),
                  child: Icon(Icons.phone,
                      size: 30, color: Color.fromRGBO(18, 96, 205, 1)),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromRGBO(0, 1, 51, 1.000),
                  child: Icon(Icons.message,
                      size: 30, color: Color.fromRGBO(18, 96, 205, 1)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
