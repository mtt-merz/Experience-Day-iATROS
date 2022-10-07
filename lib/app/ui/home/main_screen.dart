import 'package:experience_day_iatros/app/ui/task/task_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late final PageController controller =
      PageController(initialPage: currentPage);

  int currentPage = 0;

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  List<_Page> get _pages => [
        _Page(
          title: 'Home',
          content: const HomePage(),
          icon: Icons.home,
        ),
        _Page(
          title: 'My Tasks',
          content: const TaskPage(),
          icon: Icons.task,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    controller.addListener(
        () => setState(() => currentPage = controller.page!.round()));
    return Scaffold(
        body: PageView(
          controller: controller,
          physics: const NeverScrollableScrollPhysics(),
          children: _pages.map((page) => page.content).toList(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          items: _pages
              .map((page) => BottomNavigationBarItem(
                    icon: Icon(page.icon),
                    label: page.title.toUpperCase(),
                  ))
              // buildBottomNavigatorBarItem(page.title, icon: page.icon))
              .toList(),
          onTap: (selectedPage) =>
              setState(() => controller.jumpToPage(selectedPage)),
        ));
  }
}

class _Page {
  final String title;
  final IconData icon;
  final Widget content;

  _Page({required this.title, required this.content, required this.icon});
}
