import 'package:eccomerce/view/screen/auth/login.dart';
import 'package:eccomerce/view/widget/social_container.dart';
import 'package:flutter/material.dart';

import 'package:eccomerce/view/widget/auth/custom_text_filed.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9f9f9),
      appBar: AppBar(
        backgroundColor: const Color(0xfff9f9f9),
        elevation: 0,
      ),
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Sign up',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
                ),
                const SizedBox(
                  height: 80,
                ),
                const CustomTextFormFiled(hintText: 'Name'),
                const SizedBox(
                  height: 12,
                ),
                const CustomTextFormFiled(hintText: 'Email'),
                const SizedBox(
                  height: 12,
                ),
                const CustomTextFormFiled(hintText: 'Password'),
                const SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {
                          Get.to(() => Login());
                        },
                        icon: const Icon(
                          Icons.arrow_right_alt_sharp,
                          color: Color(0xffDB3022),
                          size: 30,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xffDB3022)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ))),
                      onPressed: () {},
                      child: const Text('SIGN UP')),
                ),
                const SizedBox(
                  height: 60,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Or sign up with social account',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialContainer(
                        image:
                            'assets/images/google-icon-2048x2048-czn3g8x8.png'),
                    SizedBox(
                      width: 18,
                    ),
                    SocialContainer(
                        image: 'assets/images/Facebook_icon_2013.svg.png'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
