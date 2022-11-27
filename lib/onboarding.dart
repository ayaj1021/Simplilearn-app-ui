import 'package:flutter/material.dart';
import 'package:simplilearn_ui/signin.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 44, 39, 210),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Logo
            Column(
              children: [
                Image.asset(
                  'images/Simplilearn.png',
                  width: 150,
                ),
                const SizedBox(height: 80),
                //Education image
                Image.asset(
                  'images/education.png',
                  width: 300,
                ),
              ],
            ),
            //Text

            const SizedBox(height: 20),
            const Text(
              'Enjoy 1000+ hrs of learning for Free',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 30),
            // Explore free courses button
            GestureDetector(
              onTap: (() {}),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                padding: const EdgeInsets.all(10),
                width: 320,
                height: 50,
                child: const Center(
                  child: Text(
                    'EXPLORE FREE COURSES',
                    style: TextStyle(
                        color: Color.fromARGB(255, 44, 39, 210),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            //Sign in Button
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  minimumSize: const Size(320, 50),
                  side: const BorderSide(color: Colors.white)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignIn(),
                    ));
              },
              child: const Text(
                'SIGN IN',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
