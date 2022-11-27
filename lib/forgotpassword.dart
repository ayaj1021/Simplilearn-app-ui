import 'package:flutter/material.dart';
import 'package:simplilearn_ui/mailsignin.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: (() {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MailSignIn()));
                          });
                        }),
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.blue,
                          size: 25,
                        )),
                  ),
                  const SizedBox(width: 65),
                  Image.asset(
                    'images/Simplilearn.png',
                    width: 130,
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(25, 5, 0, 0),
                child: Text(
                  'Enter your email ID below to receive your password reset instructions',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(height: 50),

              //Email input field
              Center(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                  width: 325,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.black26)),
                  ),
                ),
              ),

              const SizedBox(height: 60),
              Center(
                child: GestureDetector(
                  onTap: (() {}),
                  child: Container(
                    height: 50,
                    width: 325,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'SEND',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 400)
            ],
          ),
        ),
      ),
    );
  }
}
