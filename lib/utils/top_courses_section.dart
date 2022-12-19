import 'package:flutter/material.dart';
import 'package:simplilearn_ui/utils/top_courses_container.dart';

class TopCoursesSection extends StatelessWidget {
  const TopCoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: const [
          TopCoursesContainer(
            text: 'Introduction to Cyber Security',
            text1: '4.6',
            text2: '216k learners',
            iconData: Icons.star,
            image: ('images/Coding3.jpg'),
          ),
          SizedBox(height: 20),
          TopCoursesContainer(
            text: 'Introduction to Data Analytics\nCourse',
            text1: '4.6',
            text2: '208k learners',
            iconData: Icons.star,
            image: ('images/Coding3.jpg'),
          ),
          SizedBox(height: 20),
          TopCoursesContainer(
            text: 'Business Analytics with Excel',
            text1: '4.6',
            text2: '335k learners',
            iconData: Icons.star,
            image: ('images/Coding3.jpg'),
          ),
        ],
      ),
    );
  }
}
