import 'package:flutter/material.dart';
import 'package:yoliday_llp_task/core/widgets/custom_app_bar.dart';
import 'package:yoliday_llp_task/core/widgets/custom_bottom_nav_bar_row.dart';

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
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: ''),
      bottomNavigationBar:
          CustomBottomNavBarRow(onTap: (value) {}, currentIndex: 0),
    );
  }
}
