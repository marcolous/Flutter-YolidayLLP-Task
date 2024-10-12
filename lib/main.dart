import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yoliday_llp_task/feature/home/presentation/view/home_view.dart';
import 'package:yoliday_llp_task/feature/protfolio/presentation/manager/Project_provider/project_provider.dart';

void main() {
  runApp(const YolidayLLP());
}

class YolidayLLP extends StatelessWidget {
  const YolidayLLP({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProjectProvider(),
      child: MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        debugShowCheckedModeBanner: false,
        home: const HomeView(),
      ),
    );
  }
}
