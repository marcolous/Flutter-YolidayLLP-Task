import 'package:flutter/material.dart';
import 'package:yoliday_llp_task/feature/home/presentation/view/home_view.dart';

void main() {
  runApp(const YolidayLLP());
}

class YolidayLLP extends StatelessWidget {
  const YolidayLLP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
