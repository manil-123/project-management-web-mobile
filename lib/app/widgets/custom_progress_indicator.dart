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
        width: dimension ?? 40,
        height: dimension ?? 40,
        child: CircularProgressIndicator(
          color: color ?? Colors.black,
          strokeWidth: strokeWidth ?? 4.0,
        ),
      ),
    );
  }
}
