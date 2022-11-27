import 'package:flutter/material.dart';
import 'package:simplilearn_ui/resuseableWidgets/top_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 4;

  static final List<Widget> _widgetOptions = <Widget>[
    const Text('Home'),
    const Text('My Courses'),
    const Text('SkillUp Bytes'),
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
      appBar: AppBar(
        leading: const Icon(
          Icons.person_sharp,
          color: Colors.white,
          size: 25,
        ),
        title: const Text('Hi, Ayaj'),
        actions: [
          IconButton(
              onPressed: (() {}),
              icon: const Icon(
                Icons.search,
                size: 25,
              )),
          IconButton(
              onPressed: (() {}),
              icon: const Icon(
                Icons.notifications_none_outlined,
                size: 25,
              ))
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              TopSection(),
            ],
          ),
        ],
      ),
    );
  }
}
