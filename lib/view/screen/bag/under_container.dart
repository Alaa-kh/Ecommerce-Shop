import 'package:eccomerce/view/screen/check_out/checkout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UnderContainer extends StatelessWidget {
  const UnderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total amount:',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                r'124$',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
          child: Center(
              child: GestureDetector(
            onTap: () => Get.to(() => const CheckOut()),
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
                  'CHECK OUT',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          )),
        ),
      ],
    );
  }
}
