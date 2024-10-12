import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:yoliday_llp_task/core/utils/no_bounce_scroll_behavior.dart';
import 'package:yoliday_llp_task/feature/protfolio/presentation/manager/Project_provider/project_provider.dart';
import 'package:yoliday_llp_task/feature/protfolio/presentation/view/screens/project%20widgets/project_item.dart';

class ProjectListView extends StatelessWidget {
  const ProjectListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titles = Provider.of<ProjectProvider>(context).myTitles;
    return ScrollConfiguration(
      behavior: NoBounceScrollBehavior(),
      child: Expanded(
        child: ListView.separated(
          itemBuilder: (context, index) => ProjectItem(
            title: titles[index],
          ),
          separatorBuilder: (context, index) => Gap(10),
          itemCount: titles.length,
        ),
      ),
    );
  }
}
