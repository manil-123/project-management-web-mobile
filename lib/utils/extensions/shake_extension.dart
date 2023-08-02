import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'dart:math';

extension ShakeAnimationExtension on Widget {
  Widget withShakeAnimation({
    Duration delay = const Duration(milliseconds: 500),
    Duration duration = const Duration(milliseconds: 1500),
    Offset offset = const Offset(10.0, 0.0),
    double shakes = 10.0,
  }) {
    return HookBuilder(
      builder: (context) {
        final controller = useAnimationController(
          duration: duration,
        );

        useEffect(() {
          Future.delayed(delay, () {
            controller.forward();
          });
          return;
        }, []);

        return AnimatedBuilder(
            animation: controller,
            builder: (context, child) {
              final sineValue = sin(shakes * pi * controller.value);
              return Transform.translate(
                offset: Offset(
                  sineValue * offset.dx,
                  0,
                ),
                child: this,
              );
            });
      },
    );
  }
}
