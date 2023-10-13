import 'package:flutter/material.dart';

class SubmitOrder extends StatelessWidget {
  const SubmitOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          'SUBMIT ORDER',
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
