import 'package:flutter/material.dart';
import 'package:simplilearn_ui/Styles/app_styles.dart';

class CourseCareer extends StatelessWidget {
  final String text;
  final IconData iconData;
  final Color containerColor;
  final Color iconColor;
  const CourseCareer({
    super.key,
    required this.text,
    required this.iconData,
    required this.iconColor,
    this.containerColor = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
          color: containerColor,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: Styles.headLineStyle4
                .copyWith(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          const SizedBox(width: 15),
          Icon(
            iconData,
            color: iconColor,
            size: 45,
          ),
        ],
      ),
    );
  }
}
