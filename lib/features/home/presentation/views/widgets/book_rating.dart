import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../utils/styles.dart';

class BookRating extends StatelessWidget {
  final num rating;
  final int count;
   const BookRating({Key? key, required this.rating, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(

      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          size: 16,
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(width: 10),
        Text('$rating',style: Styles.textStyle16),
        const SizedBox(width: 4),

        Text('($count)')
      ],
    );
  }
}
