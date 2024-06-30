import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutLineBorder(),
        focusedBorder: buildOutLineBorder(),

        hintText: 'Search',
        suffixIcon: const Icon(FontAwesomeIcons.magnifyingGlass),

      ),

    );
  }

  OutlineInputBorder buildOutLineBorder(){
    return OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.white,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(12)
    );
  }
}
