import 'package:flutter/material.dart';

class LabelInfo extends StatelessWidget {
  const LabelInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Shipping Address:',
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        SizedBox(
          height: 37,
        ),
        Text(
          'Payment method:',
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'Delivery method:',
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'Discount:',
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'Total Amount:',
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }
}
