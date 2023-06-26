import 'package:go_router/go_router.dart';
import 'package:tunduk/features/main/presentation/screens/main_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      redirect: (_, __) => MainScreen.routePath,
    ),
    GoRoute(
      path: MainScreen.routePath,
      name: MainScreen.routeName,
      builder: (_, __) => MainScreen(),
    ),
  ],
  debugLogDiagnostics: true,
);
