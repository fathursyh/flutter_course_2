import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key,
      required this.warna1,
      required this.warna2,
      required this.child});

  final Color warna1;
  final Color warna2;
  final Widget child;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [warna1, warna2],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Center(
        child: child,
      ),
    );
  }
}
