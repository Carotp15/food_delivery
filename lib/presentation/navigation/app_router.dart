import 'package:go_router/go_router.dart';
import 'package:food_delivery/presentation/home/home_screen.dart';

final router = GoRouter(
  initialLocation: '/home/0',
  routes: [
    GoRoute(
      name: 'home',
      path: '/home/:page',
      builder: (context, state) {
        final pageIndex = int.parse(state.pathParameters['page'] ?? '0');
        return HomeScreen(pageIndex: pageIndex);
      },
    ),
    GoRoute(path: '/', redirect: (_, __) => '/home/0'),
  ],
);