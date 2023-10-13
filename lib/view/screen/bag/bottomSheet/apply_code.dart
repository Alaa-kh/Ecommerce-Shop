import 'package:flutter/material.dart';

class ApplyCode extends StatelessWidget {
  const ApplyCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
      child: Center(
          child: Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color(
            0xffDB3022,
          ),
        ),
        child: const Align(
          alignment: Alignment.center,
          child: Text(
            'Apply',
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
      )),
    );
  }
}
