import 'package:flutter/material.dart';

class CustomAddcardButton extends StatelessWidget {
  const CustomAddcardButton({
    super.key,
    required this.textColor,
    required this.buttonColor,
  });
  final Color textColor, buttonColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24, top: 30),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: SizedBox(
          height: 50,
          width: double.infinity,
          child: Center(
            child: Text(
              "Add New Card",
              style: TextStyle(
                fontFamily: "Dm Sans",
                color: textColor,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
