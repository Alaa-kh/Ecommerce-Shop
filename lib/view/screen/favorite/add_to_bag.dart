import 'package:flutter/material.dart';

class AddToBag extends StatelessWidget {
  const AddToBag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 104,
      right: 10,
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: const Color(0xffD3262640).withOpacity(0.2),
            offset: const Offset(
              0.0,
              04.0,
            ),
            blurRadius: 8.0,
          ),
        ], borderRadius: BorderRadius.circular(29), color: Color(0xffDB3022)),
        width: 36,
        height: 36,
        child: const Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.shopping_bag,
              color: Colors.white,
              size: 20,
            )),
      ),
    );
  }
}
