import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RateBar extends StatelessWidget {
  const RateBar({
    Key? key,
    required this.rate,
    required this.count,
  }) : super(key: key);
  final double rate;
  final int count;
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      unratedColor: Colors.grey,
      itemSize: 17,
      itemCount: count,
      rating: rate,
      itemBuilder: (context, index) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );
  }
}
