import 'package:flutter/material.dart';
import 'package:simplilearn_ui/Styles/app_styles.dart';

class Complete3HoursContainer extends StatelessWidget {
  final String text, text1, text2;
  final IconData iconData;
  final Color iconColor;
  final String? image;
  const Complete3HoursContainer(
      {super.key,
      required this.text,
      required this.text1,
      required this.text2,
      required this.iconData,
      this.iconColor = Colors.yellow,
      this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        hoverColor: Colors.grey,
        highlightColor: Colors.black,
        onTap: () {},
        child: Container(
          height: 200,
          width: 325,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 218, 214, 214),
                spreadRadius: 0.5,
                blurRadius: 5,
                // offset: Offset(5, 5),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(text, style: Styles.headLineStyle3),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        text1,
                      ),
                      const SizedBox(width: 5),
                      Icon(
                        iconData,
                        size: 16,
                        color: iconColor,
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 3,
                        width: 3,
                        decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(3))),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        text2,
                      ),
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
                  const SizedBox(height: 20),

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
              // const SizedBox(width: 2),
              const Spacer(),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                        height: 100,
                        padding: const EdgeInsets.all(45),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetImage('$image'), fit: BoxFit.cover),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 95, left: 25),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 2),
                      decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      child: const Text(
                        'FREE',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
