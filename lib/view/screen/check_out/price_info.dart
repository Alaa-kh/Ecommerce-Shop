import 'package:flutter/material.dart';

class PriceInfo extends StatelessWidget {
  const PriceInfo({
    Key? key,
    required this.title,
    required this.price,
  }) : super(key: key);
  final String title;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500),
        ),
        Text(
          price,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
