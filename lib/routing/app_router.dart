import 'package:go_router/go_router.dart';
import '../features/auth/view/signin_screen.dart';
import '../features/home/view/home_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SignInScreen()),
    GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
  ],
);
