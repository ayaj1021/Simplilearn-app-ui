import 'package:flutter/material.dart';
import 'package:simplilearn_ui/Styles/app_styles.dart';

class ReferralContainer extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String image;
  final IconData iconData;

  const ReferralContainer(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.image,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: 150,
      width: 350,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color.fromARGB(255, 233, 222, 248)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: Styles.headLineStyle3,
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Text(text2),
                  const SizedBox(width: 50),
                  Image(
                    image: AssetImage(
                      '$image',
                    ),
                    height: 35,
                  ),
                ],
              ),
              const SizedBox(height: 18),
              InkWell(
                child: Row(
                  children: [
                    Text(
                      text3,
                      style: Styles.headLineStyle3.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.blue),
                    ),
                    Icon(
                      iconData,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
