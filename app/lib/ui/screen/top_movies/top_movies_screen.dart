import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tmdb_movies/generated/l10n.dart';

class TopMoviesScreen extends StatelessWidget {
  const TopMoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          S.of(context).topMoviesTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        ElevatedButton(
          onPressed: () {
            context.go('/top_movies/detail_top/${1}');
          },
          child: Text("Detail"),
        ),
      ],
    );
  }
}
