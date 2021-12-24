import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  // const RoundIconButton({Key? key}) : super(key: key);

  RoundIconButton({this.child, this.onPressed});
  final Function onPressed;
  final IconData child;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(child),
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
