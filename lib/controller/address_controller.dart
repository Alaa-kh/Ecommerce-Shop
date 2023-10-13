import 'package:get/get.dart';

class AddressController extends GetxController {
  RxBool selected1 = false.obs;
  RxBool selected2 = false.obs;
  RxBool selected3 = false.obs;

  onChange(RxBool selected) {
    selected.value = !selected.value;
  }

  @override
  void onInit() {
    super.onInit();
    onChange;
  }
}
