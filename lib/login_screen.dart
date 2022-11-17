import 'dart:math';

import 'package:flutter/material.dart';
import 'package:new_login_signup/dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          color: const Color.fromARGB(255, 240, 238, 238),
          child: Row(
            children: [
              Visibility(
                visible: width > 800,
                child: SizedBox(
                  height: double.maxFinite,
                  width: (width - 600),
                  child: ClipRRect(
                    // borderRadius: BorderRadius.circular(80),
                    child: Image.asset(
                      'image.jpeg',
                      fit: BoxFit.cover,
                      width: 400,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: 50,
                      right: 100,
                      left: 100,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          'Welcome Back',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 60),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(fontWeight: FontWeight.bold),
                            filled: true,
                            fillColor: Color.fromARGB(255, 218, 218, 218),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(fontWeight: FontWeight.bold),
                            filled: true,
                            fillColor: Color.fromARGB(255, 218, 218, 218),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          height: 45,
                          child: ElevatedButton(
                            onPressed: () {
                              final route = MaterialPageRoute(
                                builder: (context) => const Dashboard(),
                              );
                              Navigator.push(context, route);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            child: const Text('Login'),
                          ),
                        ),
                        const SizedBox(height: 50),
                        Align(
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: () {},
                            child: const Text(
                              'I AM NEW , CREATE ACCOUNT',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          height: 45,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            child: const Text(
                              'Continue with Google',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          height: 45,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            child: const Text(
                              'Continue with Github',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
