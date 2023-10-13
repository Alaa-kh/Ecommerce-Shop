import 'package:eccomerce/routes/routes.dart';
import 'package:eccomerce/view/screen/check_out/delivery_container.dart';
import 'package:eccomerce/view/screen/check_out/price_info.dart';
import 'package:eccomerce/view/screen/check_out/submit.dart';
import 'package:eccomerce/view/screen/profile/payment/payment.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Checkout',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        elevation: 4,
        shadowColor: Colors.grey.shade100.withOpacity(.2),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Shipping address',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xffD3262640).withOpacity(0.1),
                    offset: const Offset(
                      0.0,
                      02.0,
                    ),
                    blurRadius: 8.0,
                  ),
                ],
              ),
              width: double.infinity,
              height: 108,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Jane Doe',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.offNamed(Routes.address);
                          },
                          child: const Text(
                            'Change',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffDB3022)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      '3 Newbridge Court',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Chino Hills, CA 91709, United States',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Payment',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => const PayMent());
                    },
                    child: const Text(
                      'Change',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffDB3022)),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                    width: 64,
                    height: 38,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xffD3262640).withOpacity(0.1),
                            offset: const Offset(
                              0.0,
                              02.0,
                            ),
                            blurRadius: 8.0,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Image.asset('assets/images/mastercard.png')),
                const SizedBox(
                  width: 15,
                ),
                const Text('**** **** **** 3947')
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Delivery method',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DeliveryContainer(
                  image: 'assets/images/Слой2.png',
                ),
                DeliveryContainer(
                  image: 'assets/images/usps.png',
                ),
                DeliveryContainer(
                  image: 'assets/images/Слой 2.png',
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const PriceInfo(
              title: 'Order:',
              price: r'112$',
            ),
            const SizedBox(
              height: 18,
            ),
            const PriceInfo(
              title: 'Delivery:',
              price: r'15$',
            ),
            const SizedBox(
              height: 18,
            ),
            const PriceInfo(
              title: 'Summary:',
              price: r'127$',
            ),
            const SizedBox(
              height: 30,
            ),
            const SubmitOrder()
          ],
        ),
      )),
    );
  }
}
