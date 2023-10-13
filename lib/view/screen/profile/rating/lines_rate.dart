import 'package:flutter/material.dart';

class LinesRate extends StatelessWidget {
  const LinesRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RatingLine(
          width: 114,
        ),
        SizedBox(
          height: 10,
        ),
        RatingLine(
          width: 40,
        ),
        SizedBox(
          height: 10,
        ),
        RatingLine(
          width: 29,
        ),
        SizedBox(
          height: 10,
        ),
        RatingLine(
          width: 15,
        ),
        SizedBox(
          height: 10,
        ),
        RatingLine(
          width: 8,
        ),
      ],
    );
  }
}

class RatingLine extends StatelessWidget {
  const RatingLine({
    Key? key,
    required this.width,
  }) : super(key: key);
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 8,
      decoration: BoxDecoration(
          color: Color(0xffDB3022), borderRadius: BorderRadius.circular(4)),
    );
  }
}
