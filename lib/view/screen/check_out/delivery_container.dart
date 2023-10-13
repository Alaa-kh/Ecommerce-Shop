import 'package:flutter/material.dart';

class DeliveryContainer extends StatelessWidget {
  const DeliveryContainer({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 72,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: const Color(0xffD3262640).withOpacity(0.1),
            offset: const Offset(
              0.0,
              02.0,
            ),
            blurRadius: 8.0,
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image),
            const SizedBox(
              height: 7,
            ),
            const Text(
              ' 2-3 days',
              style: TextStyle(fontSize: 11, color: Colors.grey),
            ),
          ],
        ));
  }
}
