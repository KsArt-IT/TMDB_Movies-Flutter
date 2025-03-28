import 'package:go_router/go_router.dart';
import 'package:tmdb_movies/ui/screen/screens.dart';

final GoRouter router = GoRouter(
  initialLocation: '/top_movies',
  routes: [
    StatefulShellRoute.indexedStack(
      builder:
          (context, state, navigationShell) =>
              MainScreen(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/top_movies',
              builder: (context, state) => const TopMoviesScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/movies',
              builder: (context, state) => const MoviesScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
