
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../utils/app_router.dart';
import '../../../../../utils/widgets/custom_error_widget.dart';
import '../../../../../utils/widgets/custom_loading_indicator.dart';
import '../../manager/featured_books_cubit/featured_books_cubit.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(
                          AppRouter.kDetails,
                          extra: state.books[index],
                        );
                      },
                      child:
                      CustomBookItem(
                        imageURL: state.books[index].volumeInfo.imageLinks
                            ?.thumbnail ??
                            '',
                      ),
                    ),
                  );
                }),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget( errorMessage: state.errorMessage,);
        } else {
          return const Center(child:  CustomLoadingIndicator());
        }
      },
    );
  }
}