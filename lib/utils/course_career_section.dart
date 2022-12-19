import 'package:flutter/material.dart';

import '../resuseableWidgets/course_career.dart';

class CourseCareerSection extends StatelessWidget {
  const CourseCareerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          CourseCareer(
            text: 'Data Science &\nBusiness Analytics',
            iconData: Icons.bar_chart_rounded,
            iconColor: Colors.blue,
            containerColor: Color.fromARGB(255, 169, 213, 249),
          ),
          SizedBox(width: 15),
          CourseCareer(
            text: 'Software Development',
            iconData: Icons.bug_report_sharp,
            iconColor: Color.fromARGB(255, 212, 143, 224),
            containerColor: Color.fromARGB(255, 241, 205, 247),
          ),
          SizedBox(width: 15),
          CourseCareer(
            text: 'Cyber Security',
            iconData: Icons.security_outlined,
            iconColor: Colors.green,
            containerColor: Color.fromARGB(255, 190, 226, 191),
          ),
          SizedBox(width: 15),
          CourseCareer(
            text: 'Cloud Computing',
            iconData: Icons.cloud_sync_rounded,
            iconColor: Colors.blue,
            containerColor: Color.fromARGB(255, 169, 213, 249),
          ),
        ],
      ),
    );
  }
}
