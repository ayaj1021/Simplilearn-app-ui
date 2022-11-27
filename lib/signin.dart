import 'package:flutter/material.dart';
import 'package:simplilearn_ui/mailsignin.dart';
import 'package:simplilearn_ui/onboarding.dart';
import 'package:simplilearn_ui/signuppage.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(padding: EdgeInsets.all(8)),
                IconButton(
                  onPressed: (() {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OnBoarding()));
                    });
                  }),
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 25,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(width: 65),
                Image.asset(
                  'images/Simplilearn.png',
                  width: 130,
                ),
              ],
            ),
            const SizedBox(height: 70),
            //Sign in text
            const Text(
              'Sign in',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 9),
            const Text(
              'Enjoy uninterrrupted learning',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                wordSpacing: 3,
              ),
            ),
            const SizedBox(height: 50),
            //Sign in with Google
            GestureDetector(
              child: Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.red[500],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(padding: EdgeInsets.all(10)),

                    //Sign in with google
                    Image.asset('images/Google.png', width: 30),
                    const SizedBox(width: 55),
                    const Text(
                      'Sign in with Google',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //Sign in with Facebook
            const SizedBox(height: 25),
            GestureDetector(
              child: Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(padding: EdgeInsets.all(10)),
                    Image.asset('images/facebook.png', width: 30),
                    const SizedBox(width: 55),
                    const Text(
                      'Sign in with Facebook',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Sign in with Linkedin

            const SizedBox(height: 25),
            GestureDetector(
              child: Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.blue[700],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(padding: EdgeInsets.all(10)),
                    Image.asset('images/Linkedin.png',
                        width: 30, color: Colors.white),
                    const SizedBox(width: 60),
                    const Text(
                      'Sign in with Linkedin',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //Sign in with email

            const SizedBox(height: 25),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MailSignIn()));
                });
              },
              child: Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(padding: EdgeInsets.all(10)),
                    Icon(
                      Icons.mail_outline,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 55),
                    Text(
                      'Sign in with Email',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            //New here
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'New here?',
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: (() {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    });
                  }),
                  child: const Text(
                    'Create Account',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 90),
            //Sign in with organization

            const Text(
              'Sign in with your organization',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                  fontWeight: FontWeight.w500),
            ),
            //  TextButton(onPressed: (() {}), child: const Text('chill'))
            const SizedBox(height: 50)
          ],
        ),
      ),
    );
  }
}
