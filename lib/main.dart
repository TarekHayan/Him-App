import 'package:flutter/material.dart';
import 'package:him_app/screens/login_page.dart';
import 'package:him_app/screens/sigin_up_page.dart';

void main() {
  runApp(HimApp());
}

class HimApp extends StatelessWidget {
  const HimApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'LoginPage',
      routes: {
        'LoginPage': (context) => LoginPage(),
        SiginUpPage.id: (context) => SiginUpPage(),
      },
    );
  }
}
