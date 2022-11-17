import 'package:crud_mobile_app/src/constants/images_string.dart';
import 'package:crud_mobile_app/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final splashController = Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(children: [
        Obx(
          () => AnimatedPositioned(
            height: 100,
            width: 100,
            duration: const Duration(milliseconds: 2000),
            top: 10,
            left: splashController.animate.value ? 10 : -10,
            child: const Image(
              image: AssetImage(fork),
            ),
          ),
        ),
        Obx(
          () => AnimatedPositioned(
            duration: const Duration(milliseconds: 2000),
            bottom: 100,
            left: splashController.animate.value ? 500 : -300,
            child: const Image(
              image: AssetImage(delivery),
            ),
          ),
        ),
        Obx(
          () => AnimatedPositioned(
            duration: const Duration(milliseconds: 2000),
            top: 110,
            left: splashController.animate.value ? 50 : -20,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 2000),
              opacity: splashController.animate.value ? 1 : 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "./Opf Foods",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Text(
                    "Super Fast!\nSuper Delicious!",
                    style: Theme.of(context).textTheme.headline4,
                  )
                ],
              ),
            ),
          ),
        ),
        Obx(
          () => AnimatedPositioned(
            height: splashController.animate.value ? 320 : 20,
            width: splashController.animate.value ? 400 : 20,
            duration: const Duration(milliseconds: 1000),
            bottom: 300,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 2000),
              opacity: splashController.animate.value ? 1 : 0,
              child: const Image(
                image: AssetImage(burgerj),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
