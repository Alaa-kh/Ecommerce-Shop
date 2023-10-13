import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterController extends GetxController {
  RangeValues values = const RangeValues(10, 90);
  double min = 0;
  double max = 100;
  var currentCategory = 0;
  var currentCategory2 = 0;
  var currentSelected = 0;
  var currentColor = 0;

  List type = [
    'Delivered',
    'Processing',
    'Cancelled',
  ];
  final List<String> sizeList = ['XS', 'S', 'M', 'L', 'XL'];
  final List<String> categoryList = [
    'All',
    'Women',
    'Men',
  ];
  final List<String> categoryList2 = ['Boys', 'Girls'];
  final List<Color> colorList = const [
    Colors.black,
    Color(0xffF6F6F6),
    Color(0xffB82222),
    Color(0xffBEA9A9),
    Color(0xffE2BB8D),
    Color(0xff151867),
  ];
  onChange(RangeValues val) {
    values = val;
    update();
  }

  onTapSize(int index) {
    currentSelected = index;
    update();
  }

  onTapCategory(int index) {
    currentCategory = index;
    update();
  }

  onTapCategory2(int index) {
    currentCategory2 = index;
    update();
  }

  onChangeColor(int index) {
    currentColor = index;
    update();
  }
}
