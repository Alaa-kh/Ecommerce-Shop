import 'package:get/get.dart';

class DressController extends GetxController {
  items selectedItem = items.Size;
  int activeIndex = 0;
  colors selectedColor = colors.Black;
  List<String> images = [
    'assets/images/imageslider.png',
    'assets/images/imageslider.png',
    'assets/images/imageslider.png',
  ];

  changeSlider(index) {
    activeIndex = index;
    update();
  }

  changeSize(index) {
    selectedItem = index;
    update();
  }

  changeColor(index) {
    selectedColor = index;
    update();
  }
}

enum items {
  Size,
  XS,
  S,
  M,
  L,
  XL,
}

enum colors  {
  Black,
  Red,
  Green,
  Blue,
  Pink,
  Yellow,
}
