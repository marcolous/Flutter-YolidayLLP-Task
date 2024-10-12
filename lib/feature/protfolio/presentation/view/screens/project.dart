import 'package:flutter/material.dart';
import 'package:yoliday_llp_task/core/widgets/search_widget.dart';
import 'package:yoliday_llp_task/feature/protfolio/presentation/view/screens/project%20widgets/project_list_view.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SearchWidget(),
        ProjectListView(),
      ],
    );
  }
}
