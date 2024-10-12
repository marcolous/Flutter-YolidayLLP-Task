import 'package:flutter/material.dart';

class CustomAppBarIcon extends StatelessWidget {
  const CustomAppBarIcon({super.key, required this.child, required this.onTap});

  final Widget child;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        padding: const EdgeInsets.all(11),
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(100),
        //   color: Colors.white,
        //   boxShadow: [
        //     BoxShadow(
        //       color: Colors.black.withOpacity(0.08),
        //       spreadRadius: 2,
        //       blurRadius: 2,
        //       offset: const Offset(0, 3),
        //     ),
        //   ],
        // ),
        child: child,
      ),
    );
  }
}
