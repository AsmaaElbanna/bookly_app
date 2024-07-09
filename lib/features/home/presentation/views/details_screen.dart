import 'package:bookly_app/const.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'widgets/book_rating.dart';

class DetailsScreen extends StatefulWidget {
  final BookModel book;
  const DetailsScreen({Key? key, required this.book}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context)
        .fetchSimilarBooks(category: widget.book.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        actions: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.shopping_cart))),
        ],
        leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(Icons.close))),
      ),
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.25),
                    child: SizedBox(
                      height: 250,
                      child: CustomBookItem(
                          imageURL:
                              widget.book.volumeInfo.imageLinks?.thumbnail ??
                                  ''),
                    )),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  '${widget.book.volumeInfo.title}',
                  textAlign: TextAlign.center,
                  style: Styles.textStyle30.copyWith(fontFamily: kGtSectraFine),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  widget.book.volumeInfo.authors!.first,
                  style: Styles.textStyle16.copyWith(color: Colors.grey),
                ),
                const SizedBox(height: 10),
                BookRating(
                    rating: widget.book.volumeInfo.averageRating ?? 0,
                    count: widget.book.volumeInfo.ratingsCount ?? 0),
                const SizedBox(height: 20),
                 BookAction(book: widget.book),
                const Expanded(child: SizedBox(height: 50)),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text('You can also like')),
                const SizedBox(height: 10),
                const SizedBox(height: 130, child: SimilarBooksListView())
              ],
            ),
          )
        ],
      )),
    );
  }
}
