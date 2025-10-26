import 'package:flutter/material.dart';
import 'package:him_app/widgets/type_user.dart';

class SwitchTypeUser extends StatefulWidget {
  final Function(String)? onSelected; // 👈 callback

  const SwitchTypeUser({super.key, this.onSelected});

  @override
  State<SwitchTypeUser> createState() => _SwitchTypeUserState();
}

class _SwitchTypeUserState extends State<SwitchTypeUser> {
  int selected = -1;

  void selectUser(int index) {
    setState(() {
      selected = index;
    });

    // 👇 نرسل القيمة المختارة (Student أو Doctor)
    if (widget.onSelected != null) {
      widget.onSelected!(index == 0 ? "Student" : "Doctor");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TypeUser(
          typeName: 'Student',
          typeIcon: Icon(Icons.people_alt_outlined, color: Colors.white),
          isSelected: selected == 0,
          onTap: () => selectUser(0),
        ),
        TypeUser(
          typeName: 'Doctor',
          typeIcon: Icon(Icons.person_2_outlined, color: Colors.white),
          isSelected: selected == 1,
          onTap: () => selectUser(1),
        ),
      ],
    );
  }
}
