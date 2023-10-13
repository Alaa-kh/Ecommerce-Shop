import 'package:eccomerce/view/screen/address/add_shopping.dart';
import 'package:eccomerce/view/screen/address/address.dart';
import 'package:eccomerce/view/screen/auth/signup.dart';
import 'package:eccomerce/view/screen/check_out/checkout.dart';
import 'package:eccomerce/view/screen/filters/brand.dart';
import 'package:eccomerce/view/screen/home_page/home_page.dart';
import 'package:eccomerce/view/screen/main_screen.dart';
import 'package:eccomerce/view/screen/visual_search.dart';
import 'package:eccomerce/view/screen/succes.dart';
import 'package:eccomerce/view/screen/womens/womens.dart';
import 'package:eccomerce/view/screen/womens/womens_home.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const mainScreen = Routes.mainScreen;
  static const signupScreen = Routes.signupScreen;

  static final routes = [
    GetPage(
      name: Routes.mainScreen,
      page: () => const MainScreen(),
    ),
    GetPage(
      name: Routes.whiteSuccess,
      page: () => const Success(),
    ),
    GetPage(
      name: Routes.womens,
      page: () => const Womens(),
    ),
    GetPage(
      name: Routes.womensHome,
      page: () => const WomensHome(),
    ),
    GetPage(
      name: Routes.brand,
      page: () => Brand(),
    ),
    GetPage(
      name: Routes.checkOut,
      page: () => const CheckOut(),
    ),
    GetPage(
      name: Routes.address,
      page: () => const Address(),
    ),
    GetPage(
      name: Routes.shippingAddress,
      page: () => const AddShopping(),
    ),
    GetPage(
      name: Routes.signupScreen,
      page: () => const SignUpScreen(),
    ),
    GetPage(
      name: Routes.homePage,
      page: () => const HomePage(),
    ),
    GetPage(
      name: Routes.visualSearch,
      page: () => VisualSearch(),
    ),
  ];
}

class Routes {
  static const mainScreen = '/Maincreen';
  static const signupScreen = '/SignupScreen';
  static const whiteSuccess = '/WhiteSuccess';
  static const womens = '/Womens';
  static const womensHome = '/WomensHome';
  static const brand = '/Brand';
  static const checkOut = '/CheckOut';
  static const address = '/Address';
  static const shippingAddress = '/shippingAddress';
  static const homePage = '/HomePage';
  static const visualSearch = '/VisualSearch';
}
