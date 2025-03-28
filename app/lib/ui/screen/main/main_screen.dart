import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tmdb_movies/generated/l10n.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.navigationShell}) : super(key: key);

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(S.of(context).topMoviesTitle),
      ),
      body: Center(child: Text('Home Screen')),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: theme.colorScheme.inversePrimary,
        unselectedItemColor: theme.colorScheme.onSurface,
        backgroundColor: theme.colorScheme.surface,
        items: _navBarItems,
        currentIndex: navigationShell.currentIndex,
        onTap: (index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
      ),
    );
  }

  List<BottomNavigationBarItem> get _navBarItems =>
      const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
        BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'School'),
      ];
}
