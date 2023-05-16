import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/init/theme/color_manager.dart';
import '../../../controllers/splash_page_controller.dart';


class SplashPage extends GetView<SplashPageController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashPageController>(
      builder: (c) {
        return Scaffold(
          backgroundColor: ColorManager.instance.white,
          body: SafeArea(
            child: Center(
              child: Image.asset("assets/images/logo-no-background.png", cacheWidth: 300,),
            ),
          ),
        );
      },
    );
  }
}