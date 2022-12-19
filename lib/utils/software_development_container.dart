import 'package:flutter/material.dart';
import 'package:simplilearn_ui/Styles/app_styles.dart';

class SoftWareDevelopmentContainer extends StatelessWidget {
  final String text, text1, text2;
  final IconData iconData;
  final Color iconColor;
  final String? image;
  const SoftWareDevelopmentContainer(
      {super.key,
      required this.text,
      required this.text1,
      required this.text2,
      required this.iconData,
      this.iconColor = Colors.yellow,
      this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onTap: () {},
      child: Container(
        height: 350,
        width: 225,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 218, 214, 214),
                spreadRadius: 0.5,
                blurRadius: 5,
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image/free section
            Stack(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                      image: DecorationImage(
                          image: AssetImage('$image'), fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    child: const Text(
                      'FREE',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: Styles.headLineStyle3,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(text1),
                      const SizedBox(width: 5),
                      Icon(
                        iconData,
                        color: iconColor,
                        size: 18,
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 3,
                        width: 3,
                        decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(3))),
                      ),
                      const SizedBox(width: 10),
                      Text(text2),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                        color: Color.fromARGB(255, 210, 230, 248)),
                    child: const Text('Video Lessons'),
                  ),
                  const SizedBox(height: 15),

                  //Enrolls and win rewards
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 119, 178, 242),
                            shape: BoxShape.circle),
                        child: const Icon(
                          Icons.workspace_premium_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Enroll and win rewards',
                        style: Styles.headLineStyle4.copyWith(fontSize: 12),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
