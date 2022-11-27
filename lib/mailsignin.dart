import 'package:flutter/material.dart';
import 'package:simplilearn_ui/Screens/bottom_navigation.dart';
import 'package:simplilearn_ui/forgotpassword.dart';
import 'package:simplilearn_ui/homepage.dart';
import 'package:simplilearn_ui/signin.dart';

class MailSignIn extends StatefulWidget {
  const MailSignIn({super.key});

  @override
  State<MailSignIn> createState() => _MailSignInState();
}

class _MailSignInState extends State<MailSignIn> {
  var _emailValue;

  void _updateText(val) {
    setState(() {
      _emailValue = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(8, 80, 0, 0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Logo and arrowback button

              Row(
                children: [
                  const Padding(padding: EdgeInsets.all(8)),
                  IconButton(
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignIn()));
                    }),
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.blue,
                      size: 25,
                    ),
                  ),
                  const SizedBox(width: 65),
                  Image.asset(
                    'images/Simplilearn.png',
                    width: 130,
                  ),
                ],
              ),

              const SizedBox(height: 40),

              const Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 200, 0),
                child: Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.fromLTRB(0, 13, 100, 0),
                child: Text(
                  'Sign in with your registered email',
                  style: TextStyle(fontSize: 15),
                ),
              ),

              const SizedBox(height: 30),

              //Email input field

              Center(
                child: Container(
                  width: 325,
                  padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.black26)
                        // hintText: 'Email',
                        ),
                  ),
                ),
              ),

              //const SizedBox(height: 5),

              //Password input area

              Center(
                child: Container(
                  width: 325,
                  padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.black26)),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.fromLTRB(210, 0, 0, 0),
                child: TextButton(
                  onPressed: (() {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgotPassword(),
                        ),
                      );
                    });
                  }),
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),

              //Sign in button

              Center(
                child: GestureDetector(
                  onTap: (() {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ButtomNavigation()));
                    });
                  }),
                  child: Container(
                    height: 50,
                    width: 325,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              //const SizedBox(height: 0)
            ],
          ),
        ),
      ),
    );
  }
}
    

//     Container(
//         padding: const EdgeInsets.all(20),
//         child: ListView(
//           children: [
//             // const TextField(
//             //   decoration: InputDecoration(
//             //     labelText: 'Email',
//             //     icon: Icon(
//             //       Icons.email_outlined,
//             //     ),
//             //   ),
//             // ),
//             TextFormField(
//               onChanged: ((val) {
//                 _updateText(val);
//               }),
//               decoration: const InputDecoration(
//                 hintText: ' Enter Email',
//                 labelText: 'Email',
//                 prefixIcon: Icon(
//                   Icons.email_outlined,
//                 ),
//                 //border: OutlineInputBorder(),
//               ),
//             ),
//             Text('Your email is $_emailValue')
//           ],
//         ),
//       ),
//     );
//   }
// }
