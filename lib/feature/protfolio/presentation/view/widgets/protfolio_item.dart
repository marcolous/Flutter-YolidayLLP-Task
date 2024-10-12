import 'package:flutter/material.dart';
import 'package:yoliday_llp_task/core/styles/styles.dart';

class ProtfolioItem extends StatelessWidget {
  const ProtfolioItem({
    super.key,
    required this.title,
    required this.isActive,
    required this.onTap,
  });
  final String title;
  final bool isActive;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: isActive ? Color(0xffDF5532) : const Color(0xffD6D1D5),
                width: 3,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: Styles.style14SemiBold(context).copyWith(
                  color: isActive
                      ? const Color(0xffDF5532)
                      : const Color(0xffD6D1D5),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
