import 'package:flutter/material.dart';
import 'package:simplilearn_ui/utils/software_development_container.dart';

class SoftwareDevelopmentSection extends StatelessWidget {
  const SoftwareDevelopmentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SoftWareDevelopmentContainer(
              image: ('images/Coding1.jpg'),
              text: 'Blockchain Developer',
              text1: '4.5',
              text2: '57K learners',
              iconData: Icons.star,
            ),
            SizedBox(width: 15),
            SoftWareDevelopmentContainer(
              image: ('images/Coding1.jpg'),
              text: 'Java Training',
              text1: '4.5',
              text2: '215K learners',
              iconData: Icons.star,
            ),
            SizedBox(width: 15),
            SoftWareDevelopmentContainer(
              image: ('images/Coding1.jpg'),
              text: 'Salesforce Administration & App Builder',
              text1: '4.4',
              text2: '15K learners',
              iconData: Icons.star,
            ),
            SizedBox(width: 15),
            SoftWareDevelopmentContainer(
              image: ('images/Coding1.jpg'),
              text: 'Introduction to IoT',
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
