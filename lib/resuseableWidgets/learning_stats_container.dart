import 'package:flutter/material.dart';
import 'package:simplilearn_ui/Styles/app_styles.dart';

class LearningStatsContainer extends StatelessWidget {
  final IconData iconData;
  final IconData? iconData2;
  final String scoreText;
  final String courseText;
  const LearningStatsContainer(
      {super.key,
      required this.iconData,
      required this.scoreText,
      required this.courseText,
      this.iconData2});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 80,
      width: 150,
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(color: Colors.orangeAccent, blurRadius: 1, spreadRadius: 1),
      ], borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                iconData,
                color: Colors.orangeAccent,
              ),
              const SizedBox(width: 7),
              Text(
                scoreText,
                style: Styles.headLineStyle3,
              ),
              const Spacer(),
              Icon(
                iconData2,
                size: 20,
              )
            ],
          ),
          const SizedBox(height: 10),
          Text(courseText)
        ],
      ),
    );
  }
}
