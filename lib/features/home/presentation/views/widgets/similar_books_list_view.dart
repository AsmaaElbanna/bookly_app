import 'package:bookly_app/features/home/presentation/manager/similar_books/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit , SimilarBooksState>(builder: (context, state) {
      return Text('data');
    },);
  }
}
