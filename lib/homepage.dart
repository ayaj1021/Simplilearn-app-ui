import 'package:flutter/material.dart';
import 'package:simplilearn_ui/Styles/app_styles.dart';
import 'package:simplilearn_ui/resuseableWidgets/referral_container.dart';
import 'package:simplilearn_ui/resuseableWidgets/section_heading.dart';

import 'package:simplilearn_ui/resuseableWidgets/top_section.dart';
import 'package:simplilearn_ui/utils/complete_3_hours_section.dart';
import 'package:simplilearn_ui/utils/course_career_section.dart';
import 'package:simplilearn_ui/utils/data_science_section.dart';
import 'package:simplilearn_ui/utils/recommended_courses_section.dart';
import 'package:simplilearn_ui/utils/software_development_section.dart';

import 'package:simplilearn_ui/utils/top_courses_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

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
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: const Icon(
          Icons.person_outline_sharp,
          color: Colors.white,
          size: 25,
        ),
        title: const Text('Hi, Ayaj'),
        actions: [
          IconButton(
              onPressed: (() {
                _onItemTapped(0);
              }),
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                // padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TopSection(
                      image: ('images/Topimage.png'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            decoration: const BoxDecoration(color: Colors.white),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(padding: EdgeInsets.only(left: 10)),
                Text(
                  'Top Categories',
                  style: Styles.headLineStyle3,
                ),
                const SizedBox(height: 15),
                const CourseCareerSection(),
                const SizedBox(height: 15),
              ],
            ),
          ),
          const SizedBox(height: 15),
          //Each section heading
          Container(
            decoration: const BoxDecoration(color: Colors.white),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: const [
                SectionHeading(
                  mainText: 'Recommended Courses',
                  smallText: 'SEE ALL',
                  iconData: Icons.arrow_forward_ios_rounded,
                ),
                SizedBox(height: 15),
                ReommendedCoursesSection(),
                SizedBox(height: 35),
                SectionHeading(
                  mainText: 'Top Courses',
                  smallText: 'SEE ALL',
                  iconData: Icons.arrow_forward_ios_rounded,
                ),
                SizedBox(height: 30),
                TopCoursesSection(),
                SizedBox(height: 30),
                SectionHeading(
                  mainText: 'Trending in Data Science',
                  smallText: 'SEE ALL',
                  iconData: Icons.arrow_forward_ios_rounded,
                ),
                SizedBox(height: 20),
                DataScienceSection(),
                SizedBox(height: 25),
                SectionHeading(
                  mainText: 'Complete in 3 hours or less',
                  smallText: 'SEE ALL',
                  iconData: Icons.arrow_forward_ios_rounded,
                ),
                SizedBox(height: 30),
                Complete3HoursSection(),
                SizedBox(height: 30),
                SectionHeading(
                  mainText: 'Software Development',
                  smallText: 'SEE ALL',
                  iconData: Icons.arrow_forward_ios_rounded,
                ),
                SizedBox(height: 20),
                SoftwareDevelopmentSection(),
                SizedBox(height: 30),
                ReferralContainer(
                    text1: 'Invite your friends',
                    text2:
                        'Enroll for as many SkillUp courses\nas you like for FREE',
                    text3: 'INVITE NOW',
                    image: ('images/Gifticon.png'),
                    iconData: Icons.arrow_forward)
              ],
            ),
          )
        ],
      ),
    );
  }
}
