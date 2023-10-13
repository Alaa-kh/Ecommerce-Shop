import 'package:get/get.dart';

class BrandController extends GetxController {
  List<BrandCheck> brandCheck = [
    BrandCheck("adidas", false),
    BrandCheck("adidas Originals", false),
    BrandCheck("Blend", false),
    BrandCheck("Boutique Moschino", false),
    BrandCheck("Champion", false),
    BrandCheck("Diesel", false),
    BrandCheck("Jack & Jones", false),
    BrandCheck("Naf Naf", false),
    BrandCheck("Red Valentino", false),
    BrandCheck("s.Oliver", false),
  ];

  onChange(index) {
    brandCheck[index].value = !brandCheck[index].value;
    update();
  }
}

class BrandCheck {
  String name;
  bool value;
  BrandCheck(
    this.name,
    this.value,
  );
}
