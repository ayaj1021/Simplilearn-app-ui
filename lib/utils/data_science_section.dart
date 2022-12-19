import 'package:flutter/material.dart';

import 'package:simplilearn_ui/utils/data_science_container.dart';

class DataScienceSection extends StatelessWidget {
  const DataScienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            DataScienceContainer(
              image: ('images/Coding1.jpg'),
              text: 'Applied Data Science with\nPython',
              text1: '4.5',
              text2: '228K learners',
              iconData: Icons.star,
            ),
            SizedBox(width: 15),
            DataScienceContainer(
              image: ('images/Coding1.jpg'),
              text: 'Applied Data Science with\nPython',
              text1: '4.5',
              text2: '228K learners',
              iconData: Icons.star,
            ),
            SizedBox(width: 15),
            DataScienceContainer(
              image: ('images/Coding1.jpg'),
              text: 'Applied Data Science with\nPython',
              text1: '4.5',
              text2: '228K learners',
              iconData: Icons.star,
            ),
            SizedBox(width: 15),
            DataScienceContainer(
              image: ('images/Coding1.jpg'),
              text: 'Applied Data Science with\nPython',
              text1: '4.5',
              text2: '228K learners',
              iconData: Icons.star,
            ),
          ],
        ),
      ),
    );
  }
}
