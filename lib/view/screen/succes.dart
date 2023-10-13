import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          Image.asset('assets/images/bags.png'),
          const SizedBox(
            height: 25,
          ),
          const Text(
            'Success!',
            style: TextStyle(
                color: Colors.black,
                fontSize: 34,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            'Your order will be delivered soon.',
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none),
          ),
          const SizedBox(
            height: 7,
          ),
          const Text(
            'Thank you for choosing our app!',
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none),
          ),
          const SizedBox(
            height: 200,
          ),
          GestureDetector(
            onTap: () => Get.offNamed(Routes.homePage),
            child: Container(
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
                  'CONTINUE SHOPPING',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
