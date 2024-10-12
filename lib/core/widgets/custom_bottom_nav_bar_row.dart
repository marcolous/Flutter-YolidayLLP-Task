import 'package:flutter/material.dart';
import 'package:yoliday_llp_task/core/utils/app_images.dart';
import 'package:yoliday_llp_task/core/utils/models/bottom_nav_icon_model.dart';
import 'package:yoliday_llp_task/core/widgets/custom_bottom_nav_icon_bg.dart';

class CustomBottomNavBarRow extends StatelessWidget {
  const CustomBottomNavBarRow({
    super.key,
    required this.onTap,
    required this.currentIndex,
  });

  final ValueChanged<int> onTap;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    final List<BottomNavIconModel> bottomNavIcons = [
      BottomNavIconModel(
        activeChild: AppImages.home2,
        child: AppImages.home1,
        title: 'Home',
      ),
      BottomNavIconModel(
        activeChild: AppImages.protfolio2,
        child: AppImages.protfolio1,
        title: 'Protfolio',
      ),
      BottomNavIconModel(
        activeChild: AppImages.input2,
        child: AppImages.input1,
        title: 'Input',
      ),
      BottomNavIconModel(
        activeChild: AppImages.profile2,
        child: AppImages.profile1,
        title: 'Profile',
      ),
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        bottomNavIcons.length,
        (index) => GestureDetector(
          onTap: () => onTap(index),
          child: CustomBottomNavIconBG(
            isActive: currentIndex == index,
            bottomNavIcon: bottomNavIcons[index],
          ),
        ),
      ),
    );
  }
}
