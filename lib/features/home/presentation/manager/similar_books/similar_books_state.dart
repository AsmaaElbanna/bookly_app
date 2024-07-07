part of 'similar_books_cubit.dart';

class SimilarBooksState extends Equatable {
  @override
  List<Object?> get props => [];
}

 class SimilarBooksInitial extends SimilarBooksState {}
 class SimilarBooksLoading extends SimilarBooksState {}
 class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> similarBooks;
  SimilarBooksSuccess(this.similarBooks);

 }
 class SimilarBooksFailure extends SimilarBooksState {
  final String errorMessage;
  SimilarBooksFailure(this.errorMessage);
 }
