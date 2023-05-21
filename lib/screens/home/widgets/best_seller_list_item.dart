import 'package:bookly_app/screens/home/widgets/book_rating.dart';
import 'package:bookly_app/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/assets.dart';
import '../../../const.dart';
import '../../../utils/styles.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kDetails);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 140,
              child: AspectRatio(
                aspectRatio: 1.5 / 2.5,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage(AssetData.testImage2),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .58,
                    child: Text(
                      'Harry Potter and the Global of fire',
                      style: Styles.textStyle22.copyWith(fontFamily: kGtSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),

                  ),
                  const SizedBox(height: 3),
                  const Text('J.K Rowling',style: Styles.textStyle14),
                  const SizedBox(height: 3),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: const [
                     Text('19.9 \$',style: Styles.textStyle22),
                     BookRating()
                   ],
                 )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
