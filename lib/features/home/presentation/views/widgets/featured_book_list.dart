import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app/utils/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_book_item.dart';

class FeaturedBooksList extends StatelessWidget {
  const FeaturedBooksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0),
        child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: CustomBookItem());
          },
        ),
      ),
    );


    //   BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
    //   builder: (context, state) {
    //     if(state.FeaturedBooksSuccess){
    //       return SizedBox(
    //         height: MediaQuery.of(context).size.height * .3,
    //         child: Padding(
    //           padding: const EdgeInsets.symmetric(vertical: 0),
    //           child: ListView.builder(
    //             itemCount: 5,
    //             scrollDirection: Axis.horizontal,
    //             itemBuilder: (context, index) {
    //               return const Padding(
    //                   padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
    //                   child: CustomBookItem());
    //             },
    //           ),
    //         ),
    //       );
    //     }else if(state.FeaturedBooksFailure){
    //       return const CustomErrorWidget(errorMessage: state.errorMessage,);
    //
    //     }else{
    //       return const CustomLoadingIndicator();
    //     }
    //   },
    // );
  }
}
