import 'package:go_router/go_router.dart';
import '../layouts/main_layout.dart';
import '../constants/app_constants.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppConstants.routeHome,
    routes: [
      GoRoute(
        path: '/', // TODO:splash screen-login-home 이전 분기 처리
        redirect: (context, state) => AppConstants.routeHome,
      ),
      GoRoute(
        path: AppConstants.routeHome,
        builder: (context, state) => const MainLayout(initialIndex: 0),
      ),
      GoRoute(
        path: AppConstants.routeCalendar,
        builder: (context, state) => const MainLayout(initialIndex: 1),
      ),
      GoRoute(
        path: AppConstants.routeDiary,
        builder: (context, state) => const MainLayout(initialIndex: 2),
      ),
      GoRoute(
        path: AppConstants.routeMyPage,
        builder: (context, state) => const MainLayout(initialIndex: 3),
      ),
    ],
  );
}
