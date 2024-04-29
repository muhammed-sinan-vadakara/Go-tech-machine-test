import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  final String tittle;
  const AppbarWidget({super.key, required this.tittle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(tittle),
      backgroundColor: Colors.deepPurpleAccent,
      centerTitle: true,
    );
  }
}
