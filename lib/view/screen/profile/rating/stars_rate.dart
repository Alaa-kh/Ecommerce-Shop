import 'package:eccomerce/view/screen/profile/rating/rating_bar.dart';
import 'package:flutter/material.dart';

class StarsRate extends StatelessWidget {
  const StarsRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        RateBar(
          rate: 5,
          count: 5,
        ),
        RateBar(
          rate: 4,
          count: 4,
        ),
        RateBar(
          rate: 3,
          count: 3,
        ),
        RateBar(
          rate: 2,
          count: 2,
        ),
        RateBar(
          rate: 1,
          count: 1,
        ),
      ],
    );
  }
}
