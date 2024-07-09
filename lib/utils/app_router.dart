import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/details_screen.dart';
import 'package:bookly_app/features/home/presentation/views/home_screen.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../features/splash/presentation/views/splash_screen.dart';

abstract class AppRouter {
  static String kHomeView = '/homeView';
  static String kDetails = '/detailsView';
  static String kSearch = '/searchView';

  static final router = GoRouter(
      routes: [
        GoRoute(path: '/',builder: (context, state) => const SplashScreen(),),
        GoRoute(path: kHomeView,builder: (context, state) => const HomeScreen(),),
        GoRoute(path: kDetails,builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(homeRepo: getIt.get<HomeRepoImpl>()),
          child:  DetailsScreen(book: state.extra as BookModel),
        ),),
        GoRoute(path: kSearch,builder: (context, state) => const SearchView() )

      ]);
}
