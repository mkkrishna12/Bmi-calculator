import 'package:flutter/material.dart';
import '../constants.dart';
class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap,@required this.title});
  final String title;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          child: Center(
            child: Text(
              title,
              style: kLargeButton,

            ),
          ),
          margin: EdgeInsets.only(top: 10.0),
          height: kbottomHeight,
          color: Color(0xFFEB1555),
          width: double.infinity,
        ),
      ),
    );
  }
}