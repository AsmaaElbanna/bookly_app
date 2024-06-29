import 'package:bookly_app/const.dart';
import 'package:bookly_app/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:go_router/go_router.dart';

import '../../../../utils/app_router.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigateToHome();
  }



  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetData.logo),
          const SizedBox(height: 5),
          AnimatedBuilder(
            animation: slidingAnimation,
            builder: (BuildContext context, Widget? child) {
              return SlideTransition(
                  position: slidingAnimation,
                  child: const Text('Read free books', textAlign: TextAlign.center));
            },
          ),
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 8), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }
  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 3),
          () {
        /// Using goRouter
        GoRouter.of(context).push(AppRouter.kHomeView);

        // Get.to(const HomeScreen());

        // Get.to( AppRouter.kHomeView,
        //     duration: kTransitionDuration, transition: Transition.fade);
        /// using Get package
        // Get.to(()=>const HomeScreen(), duration: const Duration(seconds: 3),transition: Transition.fadeIn);
      },
    );
  }
}
