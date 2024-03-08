import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String mainTitle;
  final String description;
  final Color mainColor;
  final Color categoryColor;

  const CategoryCard({
    super.key,
    required this.mainTitle,
    required this.description,
    required this.mainColor,
    required this.categoryColor,
  });

  final double containerHeight = 100;
  final double containerWidth = 185;
  final double containerRadius = 45;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth,
      height: containerHeight,
      margin: const EdgeInsets.only(bottom: 6),
      decoration: BoxDecoration(
        color: mainColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: mainColor,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mainTitle,
                  style: const TextStyle(
                    color: Color(0xff3B3636),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  description, // Displaying the description
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              width: containerRadius,
              height: containerRadius,
              decoration: BoxDecoration(
                color: categoryColor,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
