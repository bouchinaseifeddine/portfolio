import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.child,
    required this.padding,
    this.borderRaduis,
  });

  final Widget child;
  final double padding;
  final double? borderRaduis;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: borderRaduis != null
              ? BorderRadius.circular(borderRaduis!)
              : kborderRaduis12,
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 55, 47, 59),
                Color(0xff202023),
              ])),
      child: child,
    );
  }
}
