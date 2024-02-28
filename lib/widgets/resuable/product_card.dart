import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.title,
    required this.description,
    required this.mainBgColor,
    required this.productBgColor,
    required this.titleColor,
    required this.descColor,
  });

  final title;
  final description;
  final mainBgColor;
  final productBgColor;
  final titleColor;
  final descColor;

  final double cardHeight = 200;
  final double widthHeight = 190;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthHeight,
      height: cardHeight,
      decoration: BoxDecoration(
        color: mainBgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: titleColor,
            ),
          ),
          Text(
            description,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: descColor,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: 180,
            height: 70,
            decoration: BoxDecoration(
              color: productBgColor,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ],
      ),
    );
  }
}
