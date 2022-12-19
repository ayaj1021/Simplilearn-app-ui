import 'package:flutter/material.dart';
import 'package:simplilearn_ui/Styles/app_styles.dart';

class SectionHeading extends StatelessWidget {
  final String mainText;
  final String smallText;
  final IconData iconData;
  const SectionHeading({super.key, required this.mainText, required this.smallText, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(mainText,
         // 'Recommended Courses',
          style: Styles.headLineStyle3,
        ),
        const Spacer(),
        Text(smallText,
         // 'SEE ALL',
          style: TextStyle(fontSize: 15, color: Colors.blue[600]),
        ),
        Icon(iconData,
         // Icons.arrow_forward_ios_rounded,
          color: Colors.blue[600],
          size: 15,
        )
      ],
    );
  }
}
