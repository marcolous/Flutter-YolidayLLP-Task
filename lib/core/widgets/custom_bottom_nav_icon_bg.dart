import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:yoliday_llp_task/core/styles/styles.dart';
import 'package:yoliday_llp_task/core/utils/models/bottom_nav_icon_model.dart';

class CustomBottomNavIconBG extends StatelessWidget {
  const CustomBottomNavIconBG({
    super.key,
    required this.isActive,
    required this.bottomNavIcon,
  });
  final BottomNavIconModel bottomNavIcon;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        // padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: isActive
              ? const Border(
                  top: BorderSide(
                    color: Color(0xffDF5532),
                    width: 3,
                  ),
                )
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Gap(5),
            SizedBox(
              height: 25,
              width: 45,
              child: isActive ? bottomNavIcon.activeChild : bottomNavIcon.child,
            ),
            const Gap(5),
            Text(
              bottomNavIcon.title,
              style: Styles.style12Med(context).copyWith(
                color: isActive
                    ? const Color(0xffDF5532)
                    : const Color(0xffD6D1D5),
              ),
            )
          ],
        ));
  }
}
