import 'package:flutter/material.dart';

class GapWidget extends StatelessWidget {
  final double height;
  final double width;

  const GapWidget.h8({super.key})
      : height = 8,
        width = 0;

  const GapWidget.h16({super.key})
      : height = 16,
        width = 0;

  const GapWidget.h24({super.key})
      : height = 16,
        width = 0;

  const GapWidget.h32({super.key})
      : height = 32,
        width = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
