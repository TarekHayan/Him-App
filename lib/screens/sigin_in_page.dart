import 'package:flutter/material.dart';
import 'package:him_app/consts/colors.dart';
import 'package:him_app/helper/show_snak_bar.dart';
import 'package:him_app/screens/sigin_up_page.dart';
import 'package:him_app/widgets/custom_text_field.dart';
import 'package:him_app/widgets/switch_type_user.dart';

class SiginPage extends StatefulWidget {
  const SiginPage({super.key});

  @override
  State<SiginPage> createState() => _SiginPageState();
}

class _SiginPageState extends State<SiginPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final bool showPass = false;

  String? selectedRole;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        backgroundColor: kpcolor,
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: Colors.white70),
                color: Colors.white.withOpacity(0.1),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/photo_2025-10-24_22-31-54-removebg.png",
                      width: 180,
                      height: 140,
                    ),
                    const Text(
                      "HIGHER INSTITUTE OF MANAGMENT",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Sign in to your account',
                      style: TextStyle(color: Colors.white70),
                    ),
                    const SizedBox(height: 30),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Select your role',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: SwitchTypeUser(
                        onSelected: (value) {
                          setState(() {
                            selectedRole = value;
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Email Address',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      obscureText: showPass,
                      controller: emailController,
                      name: 'Enter your email',
                      iconData: Icons.email_outlined,
                    ),
                    const SizedBox(height: 30),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Password',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      obscureText: !showPass,
                      controller: passwordController,
                      name: 'Enter your password',
                      iconData: Icons.lock_outline,
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forget Password ?",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 65,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [kscolor, const Color(0xFF0083B0)],
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(18),
                        ),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            if (selectedRole == null) {
                              showSnackBar(
                                context,
                                msg: 'please select your role',
                              );
                            } else {
                              if (_formKey.currentState!.validate()) {
                                print("login done");
                              }
                            }
                          },
                          child: const Text(
                            "Sign In ->",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.white70),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, SiginUpPage.id);
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: kscolor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
