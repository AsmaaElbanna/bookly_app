import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation = Tween<Offset>(begin: const Offset(0,8),end: Offset.zero).animate(animationController);
    animationController.forward();

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
          Image.asset('assets/images/Logo.png'),
          const SizedBox(height: 5),
          AnimatedBuilder(
            animation: slidingAnimation,
            builder: (BuildContext context, Widget? child) {
              return SlideTransition(
                  position: slidingAnimation  , child: Text('Read free books', textAlign: TextAlign.center));

            },
          ),
        ],
      ),
    );
  }
}
