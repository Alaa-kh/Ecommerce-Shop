import 'package:eccomerce/view/screen/auth/forgot_password.dart';
import 'package:eccomerce/view/screen/profile/settings/text_filed.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<dynamic> changePassword() {
  return Get.bottomSheet(
      clipBehavior: Clip.hardEdge,
      elevation: 10,
      SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0xffD3262640).withOpacity(0.1),
                  offset: const Offset(
                    0.0,
                    04.0,
                  ),
                  blurRadius: 8.0,
                ),
              ],
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(34), topRight: Radius.circular(34))),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    'Password Change',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextFiledContainer(
                  hintText: 'Old Password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => const ForgotPassword());
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const TextFiledContainer(
                  hintText: 'New Password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextFiledContainer(
                  hintText: 'Repeat New Password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(
                      0xffDB3022,
                    ),
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'SAVE PASSWORD',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ));
}
