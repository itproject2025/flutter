import 'package:flutter/material.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/calendar/presentation/screens/calendar_screen.dart';
import '../../features/diary/presentation/screens/diary_screen.dart';
import '../../features/mypage/presentation/screens/mypage_screen.dart';
import 'app_tab.dart';
import 'nav_bar.dart';

class MainLayout extends StatefulWidget {
  final int initialIndex;

  const MainLayout({
    super.key,
    this.initialIndex = 0,
  });

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  late AppTab _currentTab;

  @override
  void initState() {
    super.initState();
    _currentTab = AppTab.fromIndex(widget.initialIndex);
  }

  void _onTabTapped(AppTab tab) {
    if (_currentTab != tab) {
      setState(() {
        _currentTab = tab;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(
            index: _currentTab.tabIndex,
            children: AppTab.values.map(_buildScreen).toList(),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: NavBar(
              currentTab: _currentTab,
              onTabTapped: _onTabTapped,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildScreen(AppTab tab) {
    switch (tab) {
      case AppTab.home:
        return const HomeScreen();
      case AppTab.calendar:
        return const CalendarScreen();
      case AppTab.diary:
        return const DiaryScreen();
      case AppTab.mypage:
        return const MyScreen();
    }
  }
}
