import 'package:flutter/material.dart';
import 'package:him_app/screens/sigin_in_page.dart';
import 'package:him_app/screens/sigin_up_page.dart';

void main() {
  runApp(const HimApp());
}

class HimApp extends StatelessWidget {
  const HimApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'SiginPage',
      routes: {
        'SiginPage': (context) => const SiginPage(),
        SiginUpPage.id: (context) => const SiginUpPage(),
      },
    );
  }
}
