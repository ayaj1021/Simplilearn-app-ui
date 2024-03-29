import 'package:flutter/material.dart';
import 'package:simplilearn_ui/homepage.dart';
import 'package:simplilearn_ui/my_courses.dart';

class ButtomNavigation extends StatefulWidget {
  const ButtomNavigation({super.key});

  @override
  State<ButtomNavigation> createState() => _ButtomNavigationState();
}

class _ButtomNavigationState extends State<ButtomNavigation> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const MyCoursesPage(),
    const Text('Skill up'),
    const Text('Quiz'),
    const Text('Community'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 100,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.book), label: 'My Courses'),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_arrow_rounded), label: 'SkillUp'),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline_outlined), label: 'Quiz'),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_outline), label: 'Community'),
          ]),
    );
  }
}
