import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final buttonName;
  final buttonColor;
  final void Function()? onPressed;

  const ButtonWidget({
    super.key,
    required this.buttonColor,
    required this.buttonName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: buttonColor,
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              buttonName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ]),
        ));
  }
}
