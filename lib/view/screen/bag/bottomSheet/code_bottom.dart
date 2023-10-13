import 'package:eccomerce/view/screen/bag/bottomSheet/code_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<dynamic> codeBottomSheet() {
  return Get.bottomSheet(
      clipBehavior: Clip.hardEdge,
      elevation: 10,
      Container(
        height: 500,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color(0xffD3262640).withOpacity(0.1),
                offset: const Offset(
                  0.0,
                  04.0,
                ),
                blurRadius: 8.0,
              ),
            ],
            color: Colors.white,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(34), topRight: Radius.circular(34))),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
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
                        suffixIconConstraints: BoxConstraints.tightForFinite(),
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
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 35,
                ),
                const Text(
                  'Your Promo Codes',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                const CodeInfo(),
              ],
            ),
          ),
        ),
      ));
}
