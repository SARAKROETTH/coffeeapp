import 'package:coffeeshop/feature/home/presentation/home_page.dart';
import 'package:coffeeshop/feature/splash/presentation/splash_page.dart';
import 'package:go_router/go_router.dart';


final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(

      path: '/',
      name: 'splash',
      builder: ((context, state) =>  SplashPage())

    ),
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context,state) => const HomePage()
    ),
  ]

);