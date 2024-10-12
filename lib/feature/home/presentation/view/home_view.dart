import 'package:flutter/material.dart';
import 'package:yoliday_llp_task/core/widgets/custom_app_bar.dart';
import 'package:yoliday_llp_task/core/widgets/custom_bottom_nav_bar_row.dart';
import 'package:yoliday_llp_task/core/widgets/custom_floating_action_button.dart';
import 'package:yoliday_llp_task/feature/home/presentation/view/home_view_body.dart';
import 'package:yoliday_llp_task/feature/input/presentation/view/input_view.dart';
import 'package:yoliday_llp_task/feature/profile/presentation/view/profile_view.dart';
import 'package:yoliday_llp_task/feature/protfolio/presentation/view/protfolio_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;

  List<Widget> _screens = [
    HomeViewBody(),
    ProtfolioView(),
    InputView(),
    ProfileView(),
  ];

  void _onItemTapped(int index) {
    setState(() => _currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:
          _currentIndex == 1 ? CustomFloatingActionButton() : null,
      bottomNavigationBar: CustomBottomNavBarRow(
        onTap: _onItemTapped,
        currentIndex: _currentIndex,
      ),
      body: _screens[_currentIndex],
    );
  }
}
