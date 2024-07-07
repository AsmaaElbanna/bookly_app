import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';
import '../../../data/models/book_model.dart';
part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());

    var result = await homeRepo.fetchNewestBook();
    result.fold(
        (failure) =>
            emit(NewestBooksFailure(errorMessage: failure.errorMessage)),
        (books) => emit(NewestBooksSuccess(books: books)));
  }
}
