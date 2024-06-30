import 'package:flutter/material.dart';

import '../../../../../common_widget/custom_button.dart';
import '../../../../../const.dart';

class BookAction extends StatelessWidget {
  const BookAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          title: '19.99 \$',
          backgroundColor: Colors.white,
          titleColor: Colors.black,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
        ),
        CustomButton(
          title: 'Free Preview',
          backgroundColor: kOrange,
          titleColor: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
        ),
      ],
    );
  }
}