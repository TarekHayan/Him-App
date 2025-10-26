import 'package:flutter/material.dart';
import 'package:him_app/consts/colors.dart';
import 'package:him_app/helper/show_snak_bar.dart';
import 'package:him_app/screens/sigin_in_page.dart';
import 'package:him_app/widgets/custom_text_field.dart';
import 'package:him_app/widgets/switch_type_user.dart';

class SiginUpPage extends StatefulWidget {
  const SiginUpPage({super.key});
  static String id = 'SiginUpPage';

  @override
  State<SiginUpPage> createState() => _SiginUpPageState();
}

class _SiginUpPageState extends State<SiginUpPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmpasswordController =
      TextEditingController();

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
                    Text(
                      "HIGHER INSTITUTE OF MANAGMENT",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Sign in to your account',
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(height: 30),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Select your role',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                    SizedBox(height: 20),
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
                    SizedBox(height: 30),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Email Address',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 10),
                    CustomTextField(
                      obscureText: showPass,
                      controller: emailController,
                      name: 'Enter your email',
                      iconData: Icons.email_outlined,
                    ),
                    SizedBox(height: 30),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Password',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 10),
                    CustomTextField(
                      obscureText: !showPass,
                      controller: passwordController,
                      name: 'Enter your password',
                      iconData: Icons.lock_outline,
                    ),
                    SizedBox(height: 30),
                    Align(
                      alignment: AlignmentGeometry.topLeft,
                      child: Text(
                        'Confirm password',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 10),
                    CustomTextField(
                      obscureText: !showPass,
                      controller: confirmpasswordController,
                      name: 'Confirm password',
                      iconData: Icons.lock_outline_rounded,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
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
                          colors: [kscolor, Color(0xFF0083B0)],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(18)),
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
                                print("sigin up done");
                              }
                            }
                          },
                          child: Text(
                            "Sign Up ->",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.white70),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Sign In",
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
