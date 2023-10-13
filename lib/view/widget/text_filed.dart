import 'package:flutter/material.dart';

class TextfiledContainer extends StatelessWidget {
  const TextfiledContainer({
    Key? key,
    required this.hintText,
    required this.suffix,
  }) : super(key: key);
  final String hintText;
  final Widget suffix;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 55,
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
          decoration: InputDecoration(
              suffixIcon: suffix,
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
              border: OutlineInputBorder(),
              hintText: hintText,
              hintStyle: TextStyle(fontSize: 13)),
        ));
  }
}
