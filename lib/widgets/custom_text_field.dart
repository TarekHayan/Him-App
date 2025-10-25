import 'package:flutter/material.dart';
import 'package:him_app/consts/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.name,
    required this.iconData,
    required this.controller,
  });
  final String name;
  final IconData iconData;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'this is required';
        }
      },
      decoration: InputDecoration(
        suffixIcon: Icon(
          iconData,
          color: Colors.white.withOpacity(0.2),
          size: 20,
        ),
        fillColor: Colors.white.withOpacity(0.1),
        filled: true,
        hint: Text(name, style: TextStyle(color: Colors.white70)),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: kpcolor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white.withOpacity(0.1)),
        ),
      ),
    );
  }
}
