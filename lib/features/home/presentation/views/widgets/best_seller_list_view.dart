import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../utils/widgets/custom_error_widget.dart';
import '../../../../../utils/widgets/custom_loading_indicator.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit , NewestBooksState>(builder: (context, state) {
      if (state is NewestBooksSuccess) {
        debugPrint("NewestBooks");
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.zero,
          itemCount: state.books.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: BestSellerItem(
                bookModel: state.books[index],
              ),
            );
          },
        );
      } else if (state is NewestBooksFailure) {
        return CustomErrorWidget(errorMessage: state.errorMessage);
      } else {
        return const CustomLoadingIndicator();
      }
    },);
  }
}
