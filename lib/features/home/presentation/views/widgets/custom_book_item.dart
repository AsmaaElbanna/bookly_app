import 'package:bookly_app/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../utils/app_router.dart';

class CustomBookItem extends StatelessWidget {
  final String? imageURL;
  const CustomBookItem({Key? key,  this.imageURL}) : super(key: key);

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
            image:  DecorationImage(
              // image: AssetImage(AssetData.testImage),
              image: NetworkImage(imageURL ?? ''),
              fit: BoxFit.cover
            )
          ),
        ),
      ),
    );
  }
}
