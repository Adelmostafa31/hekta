import 'package:flutter/material.dart';
import 'package:hekta/core/constants/constants.dart';

// ignore: camel_case_types, must_be_immutable
class container extends StatelessWidget {
  container({
    super.key,
    required this.width,
    required this.height,
    required this.color,
    required this.child,
    required this.marginTop,
    required this.marginBottom,
    required this.marginRight,
    required this.border,
    required this.marginLeft,
  });
  final double width;
  final double height;
  final double marginTop;
  final double marginBottom;
  final double marginRight;
  final double marginLeft;
  final Color color;
  final Widget child;
  double border = 15;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      margin: EdgeInsets.only(
        top: marginTop,
        bottom: marginBottom,
        right: marginRight,
        left: marginLeft,
      ),
      width: width,
      height: height,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        boxShadow: [shadow],
        color: color,
        borderRadius: BorderRadius.circular(border),
      ),
      child: child,
    );
  }
}
