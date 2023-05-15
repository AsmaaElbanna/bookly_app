import 'package:bookly_app/assets.dart';
import 'package:bookly_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

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

  void navigateToHome() {
     Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.to(const HomeScreen(),
            duration: const Duration(seconds: 3), transition: Transition.fade);
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
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
                  child: Text('Read free books', textAlign: TextAlign.center));
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
}
