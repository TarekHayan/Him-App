import 'package:flutter/material.dart';
import 'package:him_app/widgets/type_user.dart';

class SwitchTypeUser extends StatefulWidget {
  const SwitchTypeUser({super.key});

  @override
  State<SwitchTypeUser> createState() => _SwitchTypeUserState();
}

class _SwitchTypeUserState extends State<SwitchTypeUser> {
  int _Selcted = -1;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TypeUser(
          typeName: 'Student',
          typeIcon: Icon(Icons.people_alt_outlined, color: Colors.white),
          isSelected: _Selcted == 0,
          onTap: () {
            setState(() {
              _Selcted = 0;
            });
          },
        ),

        TypeUser(
          typeName: 'Doctor',
          typeIcon: Icon(Icons.person_2_outlined, color: Colors.white),
          isSelected: _Selcted == 1,

          onTap: () {
            setState(() {
              _Selcted = 1;
            });
          },
        ),
      ],
    );
  }
}
