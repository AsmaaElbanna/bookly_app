import 'package:bookly_app/assets.dart';
import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5/2.5,

      child: Container(
        decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
            image: AssetImage(AssetData.testImage),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}
