import 'package:eccomerce/routes/routes.dart';
import 'package:eccomerce/view/widget/auth/custom_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
                  'Forgot password',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
                ),
                const SizedBox(
                  height: 80,
                ),
                const Text(
                  'Please, enter your email address. You will receive a link to create a new password via email.',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextFormFiled(hintText: 'Email'),
                const SizedBox(
                  height: 72,
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
                      onPressed: () {
                        Get.offNamed(Routes.visualSearch);
                      },
                      child: const Text('SEND')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
