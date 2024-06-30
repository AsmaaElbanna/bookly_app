import 'package:bookly_app/utils/app_router.dart';
import 'package:bookly_app/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Row(
        children: [
          Image.asset(AssetData.logo,width: 90),
          const Spacer(),
          IconButton(onPressed: (){
            GoRouter.of(context).push(AppRouter.kSearch);

          }, icon: const Icon(FontAwesomeIcons.magnifyingGlass,size: 24,))
        ],
      ),
    );
  }
}
