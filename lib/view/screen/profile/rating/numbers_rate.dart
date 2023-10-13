import 'package:flutter/material.dart';

class NumbersRate extends StatelessWidget {
  const NumbersRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          '12',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          '5',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          '4',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          '2',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          '0',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
