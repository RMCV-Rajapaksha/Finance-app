import 'package:finance_app/Screens/signIn.dart';
import 'package:finance_app/widgets/bottomnavigationbar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final TextEditingController username = TextEditingController();

  final TextEditingController password = TextEditingController();

  String? emailError;

  String? passwordError;

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
        .hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    } else if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(0, 1, 51, 1.000),
              Color.fromRGBO(18, 96, 205, 1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
        ),
        height: screenHeight,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: screenHeight * 0.1,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Welcome Back",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: screenHeight * 0.04,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 1, 51, 1.000),
                              blurRadius: 20,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(),
                              child: TextFormField(
                                validator: (value) {
                                  setState(() {
                                    emailError = _validateEmail(value);
                                  });
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                controller: username,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  labelText: 'Username',
                                  labelStyle: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey.shade500),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          width: 2, color: Color(0xffC5C5C5))),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Color.fromRGBO(4, 22, 48, 1))),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(),
                              child: TextFormField(
                                validator: (value) {
                                  setState(() {
                                    passwordError = _validatePassword(value);
                                  });
                                  return null;
                                },
                                obscureText: true,
                                keyboardType: TextInputType.text,
                                controller: password,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  labelText: 'Password',
                                  labelStyle: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey.shade500),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          width: 2, color: Color(0xffC5C5C5))),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Color.fromRGBO(4, 28, 62, 1))),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            showCustomBottomSheet(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(0, 255, 255, 255),
                            onPrimary: Color.fromRGBO(255, 255, 255, 1),
                            shape: RoundedRectangleBorder(
                              side: BorderSide.none,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            padding: EdgeInsets.all(16.0),
                          ),
                          child: Text(
                            "Forget Password?",
                            style: TextStyle(
                              color: Color.fromRGBO(0, 1, 51, 1.000),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.0001,
                      ),
                      Container(
                        height: 100, // Increase the height to your desired size
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {
                              emailError = _validateEmail(username.text);
                              passwordError = _validatePassword(password.text);

                              if (emailError == null && passwordError == null) {
                                if (username.text == "admin@gmail.com" &&
                                    password.text == "admin1234") {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Bottom()),
                                  );
                                }
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(0, 1, 51, 1.000),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            child: Container(
                              height: 50,
                              width: 90,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Colors.white,
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignIn()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(0, 1, 51, 1.000),
                          ),
                          child: Container(
                            height: 50,
                            width: 90,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Singup",
                                  style: TextStyle(
                                    color: Colors.white,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor:
                                      Color.fromRGBO(0, 1, 51, 1.000),
                                  child: Icon(Icons.facebook,
                                      size: 30, color: Colors.white),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor:
                                      Color.fromRGBO(0, 1, 51, 1.000),
                                  child: Icon(Icons.mail,
                                      size: 30, color: Colors.white),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor:
                                      Color.fromRGBO(0, 1, 51, 1.000),
                                  child: Icon(Icons.security_outlined,
                                      size: 30, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void showCustomBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 300,
        // Corrected typo here: 'borderRadius' instead of 'bordeerRadius'

        color: Colors.white,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.mobile_friendly_outlined,
                          size: 30, color: Color.fromRGBO(18, 96, 205, 1)),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Verify With msg', // Added comma here
                        style: TextStyle(
                            color: Color.fromRGBO(0, 1, 51, 1.000),
                            fontSize: 20),
                      ),
                    ],
                  ),
                  height: 80,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 1, 51, 1.000),
                        blurRadius: 20,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.email_outlined,
                          size: 30, color: Color.fromRGBO(18, 96, 205, 1)),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Verify With Email', // Added comma here
                        style: TextStyle(
                            color: Color.fromRGBO(0, 1, 51, 1.000),
                            fontSize: 20),
                      ),
                    ],
                  ),
                  height: 80,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 1, 51, 1.000),
                        blurRadius: 20,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  width: 50,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Color.fromRGBO(0, 1, 51, 1.000),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
