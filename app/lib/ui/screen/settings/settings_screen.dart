import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Settings Screen',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}