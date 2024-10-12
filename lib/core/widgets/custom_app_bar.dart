import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:yoliday_llp_task/core/styles/styles.dart';
import 'package:yoliday_llp_task/core/utils/app_images.dart';
import 'package:yoliday_llp_task/core/widgets/custom_app_bar_icon.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.questionIcon,
    this.backIcon,
    this.backgroundColor,
  });
  final String title;
  final bool? questionIcon, backIcon;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor ?? const Color(0xffFFF6EC),
      actions: [
        const Spacer(),
        Text('Portfolio', style: Styles.style18SemiBold(context)),
        const Spacer(),
        CustomAppBarIcon(
          onTap: () {},
          child: AppImages.shopping,
        ),
        CustomAppBarIcon(
          onTap: () {},
          child: AppImages.notification,
        ),
        const Gap(22),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
