import 'package:flutter/material.dart';

class DetailMovieScreen extends StatelessWidget {
  const DetailMovieScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Text(
        'Detail Movie Screen',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      Text("id: $id")
      ]
    );
  }
}
