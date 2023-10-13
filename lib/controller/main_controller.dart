import 'package:eccomerce/view/screen/bag/bag.dart';
import 'package:eccomerce/view/screen/favorite/favorites.dart';
import 'package:eccomerce/view/screen/home_page/home_page.dart';
import 'package:eccomerce/view/screen/profile/profile.dart';
import 'package:eccomerce/view/screen/shop/shop.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  final tabs = [
    HomePage(),
    Shop(),
    Bag(),
    Favorites(),
    Profile(),
  ].obs;
}
