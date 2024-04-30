import 'package:flutter/material.dart';

class MenuContentWidget extends StatelessWidget {
  final String title;
  final String content;

  const MenuContentWidget({
    super.key,
    required this.content,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall!,
          ),
          Text(content),
        ],
      ),
    );
  }
}
