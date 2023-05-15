import 'package:bookly_app/screens/home/widgets/custom_app_bar.dart';
import 'package:bookly_app/screens/home/widgets/custom_list_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: const [
            CustomAppBar(),
            CustomItem()


          ],
        ),
      ),
    );
  }
}
