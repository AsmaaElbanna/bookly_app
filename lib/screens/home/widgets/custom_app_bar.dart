import 'package:bookly_app/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: Row(
        children: [
          Image.asset(AssetData.logo,width: 100),
          const Spacer(),
          IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.magnifyingGlass))
        ],
      ),
    );
  }
}
