import 'package:flutter/material.dart';

class TypeContainer extends StatelessWidget {
  const TypeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(29)),
      height: 30,
      width: 100,
      child: const Align(
        alignment: Alignment.center,
        child: Text(
          'T-shirts',
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
