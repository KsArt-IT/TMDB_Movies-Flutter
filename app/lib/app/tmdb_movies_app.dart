import 'package:flutter/material.dart';
import 'package:tmdb_movies/core/theme/app_theme.dart';
import 'package:tmdb_movies/generated/l10n.dart';
import 'package:tmdb_movies/ui/screen/main/main_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class TmdbMoviesApp extends StatelessWidget {
  const TmdbMoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => S.of(context).appTitle,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: const MainScreen(),
    );
  }
}
