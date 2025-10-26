import 'package:flutter/material.dart';
import 'package:him_app/consts/colors.dart';

void showSnackBar(BuildContext context, {required String msg}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(msg, style: TextStyle(color: Colors.white, fontSize: 20)),
      backgroundColor: kscolor,
    ),
  );
}
