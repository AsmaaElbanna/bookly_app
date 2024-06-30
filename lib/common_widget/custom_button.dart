import 'package:bookly_app/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final Color titleColor;
  const CustomButton(
      {Key? key,
      required this.title,
      required this.backgroundColor,
      required this.titleColor, required this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius)),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            title,
            style: Styles.textStyle16.copyWith(
              color: titleColor,
            ),
          ),
        ));
  }
}
