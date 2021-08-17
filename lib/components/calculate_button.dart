import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class CalculateButton extends StatelessWidget {
  CalculateButton({required this.buttonName, required this.onTap});

  final String buttonName;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          child: Center(
            child: Text(
              buttonName,
              style: kLargeButtonStyle,
            ),
          ),
          // padding: EdgeInsets.only(bottom: 20.0),
          //color: kBottomContainerColor,
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: kBottomContainerHeight,
          decoration: BoxDecoration(
              color: kBottomContainerColor,
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ),
    );
  }
}
