import 'package:coffeeshop/feature/auth/presentation/login_page.dart';
import 'package:coffeeshop/feature/auth/presentation/register_page.dart';
import 'package:coffeeshop/feature/home/presentation/home_page.dart';
import 'package:coffeeshop/feature/splash/presentation/splash_page.dart';
import 'package:go_router/go_router.dart';


final GoRouter appRouter = GoRouter(
  initialLocation: '/register',
  routes: [
    GoRoute(
        path: '/',
        name: 'splash',
        builder: (context,state) => const HomePage()
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      builder: ((context, state) =>  SplashPage())

    ),
    GoRoute(
        path: '/login',
        name: 'login',
        builder: (context,state) => const LoginPage()
    ),
      GoRoute(
          path: "/register",
          name: "register",
          builder: (context,sate) => const RegisterPage()
      )
  ]

);