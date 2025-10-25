import 'package:flutter/material.dart';

class TypeUser extends StatelessWidget {
  const TypeUser({
    super.key,
    required this.typeName,
    required this.typeIcon,
    required this.onTap,
    required this.isSelected,
  });
  final String typeName;
  final Icon typeIcon;
  final void Function() onTap;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        height: 80,
        width: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: isSelected ? Color(0xff13b6a7) : Colors.white.withOpacity(0.1),
        ),
        duration: Duration(milliseconds: 200),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            typeIcon,
            Text(typeName, style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
