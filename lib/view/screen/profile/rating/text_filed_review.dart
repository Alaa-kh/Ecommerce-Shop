import 'package:flutter/material.dart';

class TextFiledReview extends StatelessWidget {
  const TextFiledReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xffD3262640).withOpacity(0.1),
            offset: const Offset(
              0.0,
              0.0,
            ),
            blurRadius: 8.0,
          ),
        ],
      ),
      height: 160,
      width: double.infinity,
      child: TextField(
        textAlignVertical: TextAlignVertical.top,
        keyboardType: TextInputType.multiline,
        expands: true,
        maxLines: null,
        decoration: InputDecoration(
            hoverColor: Colors.white,
            disabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white, width: 0),
                borderRadius: BorderRadius.circular(10)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white, width: 0),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white, width: 0),
                borderRadius: BorderRadius.circular(10)),
            filled: true,
            fillColor: Colors.white,
            hintText: 'Your review'),
      ),
    );
  }
}
