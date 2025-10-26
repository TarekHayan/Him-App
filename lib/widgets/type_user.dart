import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        height: 80.h,
        width: 120.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: isSelected
              ? const Color(0xff13b6a7)
              : Colors.white.withOpacity(0.1),
        ),
        duration: const Duration(milliseconds: 200),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            typeIcon,
            Text(typeName, style: const TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
