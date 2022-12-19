import 'package:flutter/material.dart';
import 'package:simplilearn_ui/utils/recommended_courses_container.dart';

class ReommendedCoursesSection extends StatelessWidget {
  const ReommendedCoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  RecommendedCourses(
                    text: 'Java Training',
                    iconData: Icons.star,
                    text1: '4.4',
                    text2: '211K learners',
                    image: ('images/Coding1.jpg'),
                  ),
                  SizedBox(height: 15),
                  RecommendedCourses(
                    text: 'Python for Beginners',
                    text1: '4.5',
                    iconData: Icons.star,
                    text2: '155K learners',
                    image: ('images/Coding2.jpg'),
                  ),
                ],
              ),
              const SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  RecommendedCourses(
                    text: 'Basics of Web Scraping\nwith Beautiful Soup for ...',
                    iconData: Icons.star,
                    text1: '4.4',
                    text2: '3K learners',
                    image: ('images/Coding2.jpg'),
                  ),
                  SizedBox(height: 15),
                  RecommendedCourses(
                    text: 'Salesforce Administrator\n& App Builder',
                    text1: '4.5',
                    iconData: Icons.star,
                    text2: '15K learners',
                    image: ('images/Coding2.jpg'),
                  ),
                ],
              ),
              const SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  RecommendedCourses(
                    text: 'Cryptocurrency Basics\nTutorial Course',
                    iconData: Icons.star,
                    text1: '5.0',
                    text2: '66 learners',
                    image: ('images/Coding2.jpg'),
                  ),
                  SizedBox(height: 15),
                  RecommendedCourses(
                    text: 'BlockChain Developer',
                    text1: '4.5',
                    iconData: Icons.star,
                    text2: '56K learners',
                    image: ('images/Coding3.jpg'),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
