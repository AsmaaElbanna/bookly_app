import 'package:bookly_app/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../utils/app_router.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kDetails);
      },
      child: AspectRatio(
        aspectRatio: 1.5/2.3,

        child: Container(
          decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage(AssetData.testImage),
              fit: BoxFit.cover
            )
          ),
        ),
      ),
    );
  }
}
