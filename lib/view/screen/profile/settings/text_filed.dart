import 'package:flutter/material.dart';

class TextFiledContainer extends StatelessWidget {
  const TextFiledContainer({
    Key? key,
    required this.hintText,
    required this.obscureText,
  }) : super(key: key);
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 64,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0xffD3262640).withOpacity(0.1),
              offset: const Offset(
                0.0,
                00.0,
              ),
              blurRadius: 8.0,
            ),
          ],
          color: Colors.white,
        ),
        child: TextFormField(
          obscureText: obscureText,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hoverColor: Colors.white,
              disabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),
              contentPadding: EdgeInsets.all(28),
              border: const OutlineInputBorder(),
              hintText: hintText,
              hintStyle: const TextStyle(fontSize: 13)),
        ));
  }
}
