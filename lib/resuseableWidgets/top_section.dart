import 'package:flutter/material.dart';
import 'package:simplilearn_ui/Styles/app_styles.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      height: 150,
      width: 350,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 32, 1, 117)),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SkillUp Job Fest is here!',
                style: Styles.headLineStyle3.copyWith(color: Colors.white),
              ),
              const SizedBox(height: 10),
              Text(
                'Land a Job as Inside Sales',
                style: Styles.headLineStyle3.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 10),
              ),
              Text(
                'Manager at Simplilearn',
                style: Styles.headLineStyle3.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 10),
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 204, 170, 2),
                    borderRadius: BorderRadius.circular(3)),
                child: Text(
                  'KNOW MORE',
                  style: Styles.headLineStyle4.copyWith(color: Colors.black),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
