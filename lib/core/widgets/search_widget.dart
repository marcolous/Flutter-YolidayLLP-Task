import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:yoliday_llp_task/core/styles/styles.dart';
import 'package:yoliday_llp_task/core/utils/app_images.dart';
import 'package:yoliday_llp_task/feature/protfolio/presentation/manager/Project_provider/project_provider.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});
  @override
  Widget build(BuildContext context) {
    TextStyle hintStyle = Styles.style18Reg(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      margin: const EdgeInsets.all(16),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Color(0xffE0E0E0),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: hintStyle,
              decoration: InputDecoration(
                hintText: 'Search a project',
                hintStyle: hintStyle,
                border: InputBorder.none,
              ),
              onChanged: (value) {
                Provider.of<ProjectProvider>(context, listen: false)
                    .setSearchResult(searchResult: value);
              },
            ),
          ),
          const Gap(15),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: AppImages.search,
          ),
        ],
      ),
    );
  }
}
