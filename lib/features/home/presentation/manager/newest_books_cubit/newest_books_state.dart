part of 'newest_books_cubit.dart';

class NewestBooksState extends Equatable {
  @override
  List<Object?> get props => [];
}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoading extends NewestBooksState {}

class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> books;
  NewestBooksSuccess({required this.books});
}

class NewestBooksFailure extends NewestBooksState {
  final String errorMessage;
  NewestBooksFailure({required this.errorMessage});
}
