import 'package:flutter/material.dart';

class BottomNavIconModel {
  final Widget activeChild;
  final Widget child;
  final String title;

  BottomNavIconModel({
    required this.title,
    required this.activeChild,
    required this.child,
  });
}
