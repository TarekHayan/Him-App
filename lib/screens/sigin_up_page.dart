import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:him_app/consts/colors.dart';
import 'package:him_app/helper/show_snak_bar.dart';
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
              width: 350.w,
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
                      width: 150.w,
                      height: 120.h,
                    ),
                    Text(
                      "HIGHER INSTITUTE OF MANAGMENT",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    const Text(
                      'Sign in to your account',
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(height: 20.h),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Select your role',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                    SizedBox(height: 20.h),
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
                    SizedBox(height: 20.h),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Email Address',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    CustomTextField(
                      obscureText: showPass,
                      controller: emailController,
                      name: 'Enter your email',
                      iconData: Icons.email_outlined,
                    ),
                    SizedBox(height: 20.h),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Password',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    CustomTextField(
                      obscureText: !showPass,
                      controller: passwordController,
                      name: 'Enter your password',
                      iconData: Icons.lock_outline,
                    ),
                    SizedBox(height: 20.h),
                    const Align(
                      alignment: AlignmentGeometry.topLeft,
                      child: Text(
                        'Confirm password',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 10.h),
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
                        child: const Text(
                          "Forget Password ?",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 50.h,
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
                                print("sigin up done");
                              }
                            }
                          },
                          child: Text(
                            "Sign Up ->",
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.white70),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Center(
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                color: kscolor,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                              ),
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
