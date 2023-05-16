
import 'package:get/get.dart';
import '../controllers/home_page_controller.dart';


class HomePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(() => HomePageController());
  }
}