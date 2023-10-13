import 'package:flutter/material.dart';

class SendReview extends StatelessWidget {
  const SendReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          'SEND REVIEW',
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
