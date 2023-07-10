import 'package:flutter/material.dart';

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({
    super.key,
    this.color,
    this.dimension,
    this.strokeWidth,
  });

  final Color? color;
  final double? dimension;
  final double? strokeWidth;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: dimension,
        height: dimension,
        child: CircularProgressIndicator(
          color: color,
          strokeWidth: strokeWidth ?? 4.0,
        ),
      ),
    );
  }
}
