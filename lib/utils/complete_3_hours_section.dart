import 'package:flutter/material.dart';

import 'package:simplilearn_ui/utils/complete_3_hourse_container.dart';

class Complete3HoursSection extends StatelessWidget {
  const Complete3HoursSection({super.key});

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
                  Complete3HoursContainer(
                    text: 'Introduction to IoT',
                    iconData: Icons.star,
                    text1: '4.5',
                    text2: '44K learners',
                    image: ('images/Coding1.jpg'),
                  ),
                  SizedBox(height: 15),
                  Complete3HoursContainer(
                    text: 'Business Analytics\nwith Excel',
                    text1: '4.6',
                    iconData: Icons.star,
                    text2: '355K learners',
                    image: ('images/Coding2.jpg'),
                  ),
                ],
              ),
              const SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Complete3HoursContainer(
                    text: 'GIT Training',
                    iconData: Icons.star,
                    text1: '4.5',
                    text2: '36K learners',
                    image: ('images/Coding2.jpg'),
                  ),
                  SizedBox(height: 15),
                  Complete3HoursContainer(
                    text: 'Digital Transformation\nCourse for Leaders',
                    text1: '4.5',
                    iconData: Icons.star,
                    text2: '36K learners',
                    image: ('images/Coding2.jpg'),
                  ),
                ],
              ),
              const SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Complete3HoursContainer(
                    text: 'Introduction to Data\nAnalytics Course',
                    iconData: Icons.star,
                    text1: '4.6',
                    text2: '208K learners',
                    image: ('images/Coding2.jpg'),
                  ),
                  SizedBox(height: 15),
                  Complete3HoursContainer(
                    text: 'Ethical Hacking for\nBeginners',
                    text1: '4.6',
                    iconData: Icons.star,
                    text2: '132K learners',
                    image: ('images/Coding3.jpg'),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
