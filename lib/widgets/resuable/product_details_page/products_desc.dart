import 'package:flutter/material.dart';

class ProductDesc extends StatelessWidget {
  final String title;
  final String description;

  const ProductDesc({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xff3B3636),
            fontSize: 21,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          description,
          style: const TextStyle(
            color: Color(0xff3B3636),
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
