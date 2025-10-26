import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:him_app/screens/sigin_in_page.dart';
import 'package:him_app/screens/sigin_up_page.dart';

void main() {
  runApp(const HimApp());
}

class HimApp extends StatelessWidget {
  const HimApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: 'SiginPage',
          routes: {
            'SiginPage': (context) => const SiginPage(),
            SiginUpPage.id: (context) => const SiginUpPage(),
          },
        );
      },
    );
  }
}
