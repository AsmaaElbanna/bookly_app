import 'package:bookly_app/features/home/presentation/views/details_screen.dart';
import 'package:bookly_app/features/home/presentation/views/home_screen.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
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
        GoRoute(path: kDetails,builder: (context, state) => const DetailsScreen(),),
        GoRoute(path: kSearch,builder: (context, state) => const SearchView() )

      ]);
}
