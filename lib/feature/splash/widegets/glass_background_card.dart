import 'dart:ui';

import 'package:flutter/material.dart';

class GlassBackgroundCard extends StatelessWidget {

  final Widget child;
  final double borderRadius;
  final double blur;
  final Color color;
  final EdgeInsetsGeometry padding;
  const GlassBackgroundCard({
    super.key,
    required this.child,
    this.borderRadius = 20,
    this.blur = 20,
    this.color = Colors.grey,
    this.padding = const EdgeInsets.all(20)
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: blur,
          sigmaY: blur
        ),
        child: Container(
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(borderRadius)
          ),
          child: Padding(
            padding: padding,
            child: child,
          ),
        )
      ),

    );
  }
}
