import 'package:flutter/material.dart';

class ResusableWidgett extends StatelessWidget {

  ResusableWidgett({@required this.colors, this.Child, this.onTap});

  final Color colors;
  final Widget Child;
  final Function onTap;

  @override

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          child: Child,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: colors,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}