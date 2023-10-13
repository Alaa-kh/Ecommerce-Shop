// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AddFavorite extends StatelessWidget {
  const AddFavorite({
    Key? key,
    required this.top,
    required this.right,
  }) : super(key: key);
  final double top;
  final double right;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      right: right,
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
        ], borderRadius: BorderRadius.circular(29), color: Colors.white),
        width: 36,
        height: 36,
        child: const Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.favorite_border,
              color: Colors.grey,
              size: 20,
            )),
      ),
    );
  }
}
