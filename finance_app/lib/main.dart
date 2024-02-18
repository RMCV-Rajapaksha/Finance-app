import 'package:finance_app/Screens/login.dart';
import 'package:finance_app/Screens/signIn.dart';
import 'package:flutter/material.dart';
import 'package:finance_app/Screens/home.dart';
import 'package:finance_app/Screens/statistics.dart';
import 'package:finance_app/widgets/bottomnavigationbar.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'data/model/add_date.dart';
import 'package:device_preview/device_preview.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
