import 'package:bookly_app/screens/details/details_screen.dart';
import 'package:bookly_app/screens/home/home_screen.dart';
import 'package:bookly_app/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static String kHomeView = '/homeView';
  static String kDetails = '/detailsView';

  static final router = GoRouter(
      routes: [
        GoRoute(path: '/',builder: (context, state) => const SplashScreen(),),
        GoRoute(path: kHomeView,builder: (context, state) => const HomeScreen(),),
        GoRoute(path: kDetails,builder: (context, state) => const DetailsScreen(),)

      ]);
}
