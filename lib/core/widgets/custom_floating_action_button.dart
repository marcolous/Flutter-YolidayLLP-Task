import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:yoliday_llp_task/core/styles/styles.dart';
import 'package:yoliday_llp_task/core/utils/app_images.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      height: 50,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          color: const Color(0xffDF5532),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 15, child: AppImages.filter),
            const Gap(10),
            Text(
              'Filter',
              style:
                  Styles.style15Medium(context).copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
