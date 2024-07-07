import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/utils/app_router.dart';
import 'package:bookly_app/utils/widgets/custom_loading_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../utils/assets.dart';
import '../../../../../const.dart';
import '../../../../../utils/styles.dart';
import 'book_rating.dart';

class BestSellerItem extends StatelessWidget {
  final BookModel bookModel;
  const BestSellerItem({Key? key, required this.bookModel}) : super(key: key);

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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CachedNetworkImage(
                    imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail,
                    fit: BoxFit.fill,
                    placeholder: (context, url) => const CustomLoadingIndicator(),
                    errorWidget: (context, url, error) => const Icon(Icons.error_outline),

                  ),
                )
                // Container(
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20),
                //       image: const DecorationImage(
                //           image: AssetImage(AssetData.testImage2),
                //           fit: BoxFit.cover)),
                // ),
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
                      // 'Harry Potter and the Global of fire',
                      '${bookModel.volumeInfo.title}',
                      style: Styles.textStyle22.copyWith(fontFamily: kGtSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),

                  ),
                  const SizedBox(height: 3),
                   Text(bookModel.volumeInfo.authors!.first,style: Styles.textStyle14),
                  const SizedBox(height: 3),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Free',style: Styles.textStyle22),
                      BookRating(rating: bookModel.volumeInfo.averageRating ?? 0,
                        count: bookModel.volumeInfo.ratingsCount ?? 0,)
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
