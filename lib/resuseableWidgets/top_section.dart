import 'package:flutter/material.dart';
import 'package:simplilearn_ui/Styles/app_styles.dart';

class TopSection extends StatelessWidget {
  //final String text;
  final String image;

  const TopSection({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  left: 10, top: 20, bottom: 10, right: 14),
              height: 170,
              width: 384,
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 32, 1, 117)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'SkillUp Job Fest is here!',
                        style: Styles.headLineStyle3
                            .copyWith(color: Colors.white, fontSize: 20),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Land a Job as Inside Sales\nManager at Simplilearn ',
                        style: Styles.headLineStyle3.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 17),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 204, 170, 2),
                            borderRadius: BorderRadius.circular(3)),
                        child: Text(
                          'KNOW MORE',
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                          radius: 60,
                          backgroundColor: Color.fromARGB(255, 204, 170, 2)))
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 245),
          child: Image(
            image: AssetImage('$image'),
            height: 170,
            // width: 100,
          ),
        ),
      ],
    );
  }
}
