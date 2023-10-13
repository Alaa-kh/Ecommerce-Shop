import 'package:flutter/material.dart';

class CheckOutUnder extends StatelessWidget {
  const CheckOutUnder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        height: 100,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0xffD3262640).withOpacity(0.2),
              offset: const Offset(
                0.0,
                01.0,
              ),
              blurRadius: 8.0,
            ),
          ],
          color: Colors.white,
        ),
        child: Center(
            child: Container(
          width: 300,
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
              'ADD TO CART',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
        )),
      ),
    );
  }
}
