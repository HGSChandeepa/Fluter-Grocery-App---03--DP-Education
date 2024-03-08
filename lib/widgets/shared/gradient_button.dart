import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String title;
  final Color topColor;
  final double buttonWidth;

  final Color bottomColor;
  const GradientButton({
    super.key,
    required this.title,
    required this.topColor,
    required this.bottomColor,
    required this.buttonWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth, // Adjust width as needed
      height: 50, // Adjust height as needed
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [topColor, bottomColor], // Define your gradient colors
        ),
        borderRadius:
            BorderRadius.circular(25), // Adjust border radius as needed
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black, // Set text color to contrast with gradient
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
