import 'package:flutter/material.dart';
import 'package:yoliday_llp_task/feature/protfolio/presentation/view/screens/achievment.dart';
import 'package:yoliday_llp_task/feature/protfolio/presentation/view/screens/project.dart';
import 'package:yoliday_llp_task/feature/protfolio/presentation/view/screens/saved.dart';
import 'package:yoliday_llp_task/feature/protfolio/presentation/view/screens/shared.dart';
import 'package:yoliday_llp_task/feature/protfolio/presentation/view/widgets/protfolio_item.dart';

class ProtfolioView extends StatefulWidget {
  const ProtfolioView({super.key});

  @override
  State<ProtfolioView> createState() => _ProtfolioViewState();
}

class _ProtfolioViewState extends State<ProtfolioView> {
  final PageController _pageController = PageController();
  int _activeIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _activeIndex = index;
    });
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ProtfolioItem(
              title: 'Project',
              isActive: _activeIndex == 0,
              onTap: () => _onItemTapped(0),
            ),
            ProtfolioItem(
              title: 'Saved',
              isActive: _activeIndex == 1,
              onTap: () => _onItemTapped(1),
            ),
            ProtfolioItem(
              title: 'Shared',
              isActive: _activeIndex == 2,
              onTap: () => _onItemTapped(2),
            ),
            ProtfolioItem(
              title: 'Achievment',
              isActive: _activeIndex == 3,
              onTap: () => _onItemTapped(3),
            ),
          ],
        ),
        Expanded(
          child: PageView(
            controller: _pageController,
            children: [
              Project(),
              Saved(),
              Shared(),
              Achievment(),
            ],
          ),
        ),
      ],
    );
  }
}
