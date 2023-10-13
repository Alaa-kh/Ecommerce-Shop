import 'package:eccomerce/view/screen/bag/bottomSheet/code_bottom.dart';
import 'package:flutter/material.dart';

List titlesSheet = [
  'Personal offer',
  'Summer Sale',
  'Personal offer',
];

class PromoCode extends StatelessWidget {
  const PromoCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: const Color(0xffD3262640).withOpacity(0.2),
                blurRadius: 8.0,
              ),
            ],
          ),
          width: double.infinity,
          height: 40,
          child: TextField(
            onChanged: (searchName) {},
            decoration: InputDecoration(
              disabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(8)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(8)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(8)),
              contentPadding: const EdgeInsets.all(12),
              suffixIconConstraints: const BoxConstraints.tightForFinite(),
              hintText: 'Enter your promo code',
              hintStyle: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500),
              suffixIcon: Container(
                decoration: const BoxDecoration(
                    color: Colors.black, shape: BoxShape.circle),
                width: 40,
                height: 40,
                child: IconButton(
                    onPressed: () {
                      codeBottomSheet();
                    },
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )),
              ),
            ),
          )),
    );
  }
}
