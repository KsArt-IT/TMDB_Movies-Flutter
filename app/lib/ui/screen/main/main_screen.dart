import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:tmdb_movies/generated/l10n.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.navigationShell}) : super(key: key);

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final s = S.of(context);

    final isDetailScreen = GoRouter.of(
      context,
    ).routerDelegate.currentConfiguration.uri.path.contains('detail');

    final routeName = GoRouter.of(context).routerDelegate.state.name ?? '';
    final title = Intl.message(routeName);

    List<BottomNavigationBarItem> navBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), label: s.topTab),
      BottomNavigationBarItem(icon: Icon(Icons.movie), label: s.moviesTab),
      BottomNavigationBarItem(icon: Icon(Icons.favorite), label: s.favoriteTab),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: s.settingsTab),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.inversePrimary,
        title: Text(title),
        leading:
            isDetailScreen
                ? IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => context.pop(),
                )
                : null,
      ),
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: theme.colorScheme.inversePrimary,
        unselectedItemColor: theme.colorScheme.secondary,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: theme.colorScheme.surface,
        items: navBarItems,
        currentIndex: navigationShell.currentIndex,
        onTap: (int index) => navigationShell.goBranch(index),
      ),
    );
  }
}
