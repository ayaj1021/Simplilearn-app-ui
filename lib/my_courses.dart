import 'package:flutter/material.dart';
import 'package:simplilearn_ui/Styles/app_styles.dart';
import 'package:simplilearn_ui/resuseableWidgets/learning_stats_container.dart';
import 'package:simplilearn_ui/resuseableWidgets/referral_container.dart';

class MyCoursesPage extends StatelessWidget {
  const MyCoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('My Courses'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              // Cream container that showed last course
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 305,
                width: 700,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 254, 245, 232),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      'Jump to where you last left',
                      style: Styles.headLineStyle3,
                    ),
                    const SizedBox(height: 15),
                    //Introduction to flutter section
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 23),
                      height: 120,
                      width: 500,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 1,
                              spreadRadius: 1,
                            )
                          ],
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Introduction to Flutter Course\nOnline',
                                style: Styles.headLineStyle3,
                              ),
                              const SizedBox(height: 15),
                              // 5 days left section
                              Row(
                                children: [
                                  Icon(Icons.timer,
                                      color: Colors.grey[400], size: 18),
                                  const SizedBox(width: 7),
                                  Text('5 days left',
                                      style: Styles.headLineStyle4),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    //Content partner section
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      height: 45,
                      width: 500,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          offset: Offset.fromDirection(0.5),
                          color: Colors.grey.shade300,
                          blurRadius: 1,
                          spreadRadius: 1,
                        )
                      ], color: const Color.fromARGB(255, 230, 240, 248)),
                      child: Row(
                        children: [
                          Text('Content Partner - ',
                              style: Styles.headLineStyle4),
                          const SizedBox(width: 5),
                          const Image(
                              image: AssetImage('images/Youtube.png'),
                              height: 30),
                          const SizedBox(width: 5),
                          const Text('/Aditya Thakur',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15))
                        ],
                      ),
                    ),
                    //View Certificate section
                    Container(
                      height: 50,
                      width: 500,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 1,
                              spreadRadius: 1,
                            )
                          ],
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: InkWell(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'View Certificate',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Cream container that showed last course ends
              //Learning stats section
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                height: 320,
                width: 350,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ],
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Learning Stats',
                          style: Styles.headLineStyle3,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            const Icon(
                              Icons.school_sharp,
                              color: Colors.blue,
                              size: 35,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'Stay on track to meet your goals by learning\na little everyday!',
                              style: Styles.headLineStyle4.copyWith(
                                  color: Colors.black54, fontSize: 13),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        //Orange border section
                        Column(
                          children: [
                            Row(children: const [
                              LearningStatsContainer(
                                iconData: Icons.query_builder_sharp,
                                iconData2: Icons.share,
                                scoreText: '166',
                                courseText: 'Learning Mins',
                              ),
                              SizedBox(width: 15),
                              LearningStatsContainer(
                                iconData: Icons.quiz_outlined,
                                scoreText: '0%',
                                courseText: 'Quiz Accuracy',
                              ),
                            ]),
                            const SizedBox(height: 15),
                            Row(children: const [
                              LearningStatsContainer(
                                iconData: Icons.play_circle_outline_outlined,
                                scoreText: '7',
                                courseText: 'Topics Completed',
                              ),
                              SizedBox(width: 15),
                              LearningStatsContainer(
                                iconData: Icons.workspace_premium_outlined,
                                scoreText: '1',
                                courseText: 'Certificates',
                              ),
                            ])
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              //Learning stats section ends
              const ReferralContainer(
                  text1: 'Invite your friends',
                  text2:
                      'Enroll for as many SkillUp courses\nas you like for FREE',
                  text3: 'INVITE NOW',
                  image: ('images/Gifticon.png'),
                  iconData: Icons.arrow_forward)
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
