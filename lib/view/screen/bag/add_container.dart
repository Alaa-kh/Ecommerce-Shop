import 'package:flutter/material.dart';

addContainer(onTap) {
  return GestureDetector(
    onTap: onTap,
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
      width: 30,
      height: 30,
      child: const Align(
          alignment: Alignment.center,
          child: Icon(
            Icons.add,
            color: Colors.grey,
            size: 20,
          )),
    ),
  );
}
