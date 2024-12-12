import 'package:go_router/go_router.dart';
import 'package:polosys_machine_test/feature/auth/view/pages/log_in_page.dart';
import 'package:polosys_machine_test/feature/auth/view/pages/log_up_page.dart';
import 'package:polosys_machine_test/feature/homePage/view/pages/home_page.dart';

final router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
        path: "/login",
        builder: (context, state) => const LogInPage(),
        name: "login"),
    GoRoute(
        path: '/homepage',
        builder: (context, state) => const HomePage(),
        name: "homepage"),
    GoRoute(
        path: "/logup",
        builder: (context, state) => const LogUpPage(),
        name: "logup"),
  ],
);
