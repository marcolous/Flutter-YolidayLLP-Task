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
      decoration: BoxDecoration(
          border: Border(
        top: BorderSide(
          color: isActive ? Color(0xffDF5532) : Colors.transparent,
          width: 3,
        ),
      )),
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
              color:
                  isActive ? const Color(0xffDF5532) : const Color(0xffD6D1D5),
            ),
          )
        ],
      ),
    );
  }
}
