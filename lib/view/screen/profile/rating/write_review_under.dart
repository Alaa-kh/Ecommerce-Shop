import 'package:flutter/material.dart';

class WriteReviewUnder extends StatelessWidget {
  const WriteReviewUnder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      margin: const EdgeInsets.only(left: 240, right: 10, bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color(
          0xffDB3022,
        ),
      ),
      child: const Align(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.create,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Write a review',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
