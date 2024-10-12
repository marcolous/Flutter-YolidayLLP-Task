import 'package:flutter/material.dart';
import 'package:yoliday_llp_task/core/widgets/search_widget.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SearchWidget(),
      ],
    );
  }
}
