import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: kborderRaduis12,
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(67, 67, 134, 0.941),
                Color.fromRGBO(68, 68, 139, 0.671),
                Color.fromRGBO(38, 38, 89, 0.479),
                Color.fromRGBO(38, 38, 38, 0),
                Color.fromRGBO(38, 38, 38, 0),
                Color.fromRGBO(68, 68, 139, 0.671),
              ])),
      child: child,
    );
  }
}
