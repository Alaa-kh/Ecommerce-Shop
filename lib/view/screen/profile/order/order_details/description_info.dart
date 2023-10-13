import 'package:flutter/material.dart';

class DescreiptionInfo extends StatelessWidget {
  const DescreiptionInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          '3 Newbridge Court ,Chino Hills,',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 7,
        ),
        const Text(
          'CA 91709, United States',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 14,
        ),
        Row(
          children: [
            Image.asset('assets/images/mastercard.png'),
            const SizedBox(
              width: 20,
            ),
            const Text(
              '**** **** **** 3947',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          r'FedEx, 3 days, 15$',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          '10%, Personal promo code',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          r'133$',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
