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
              name: "topMoviesTitle",
              path: '/top_movies',
              builder: (context, state) => const TopMoviesScreen(),
              routes: [
                  GoRoute(
                    path: 'detail_top/:movieId',
                    builder: (context, state) => DetailMovieScreen(id: state.pathParameters['movieId'] ?? ''),
                  ),
                ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: "moviesTitle",
              path: '/movies',
              builder: (context, state) => const MoviesScreen(),
              routes: [
                GoRoute(
                  path: 'detail_movie/:movieId',
                  builder:
                      (context, state) => DetailMovieScreen(
                        id: state.pathParameters['movieId'] ?? '',
                      ),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'favoritesTitle',
              path: '/favorites',
              builder: (context, state) => const FavoriteMoviesScreen(),
              routes: [
                GoRoute(
                  path: 'detail_favorite/:movieId',
                  builder:
                      (context, state) => DetailMovieScreen(
                        id: state.pathParameters['movieId'] ?? '',
                      ),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: "settingsTitle",
              path: '/settings',
              builder: (context, state) => const SettingsScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
