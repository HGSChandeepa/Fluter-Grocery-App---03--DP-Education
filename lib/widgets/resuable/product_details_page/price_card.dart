import 'package:flutter/material.dart';

class PriceCard extends StatelessWidget {
  final int productNumber;
  final String productName;
  final double productWeight;
  final String productUnit;

  const PriceCard({
    Key? key,
    required this.productNumber,
    required this.productName,
    required this.productWeight,
    required this.productUnit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.yellow,
            ),
            child: Center(
              child: Text(
                productNumber.toString(),
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 100, // Set a constant width here
            child: Text(
              productName,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black54,
                fontWeight: FontWeight.w500,
              ),
              overflow: TextOverflow.ellipsis, // Handle overflow gracefully
            ),
          ),
          Container(
            width: 200,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: const Color(0xffD9D9D9).withOpacity(0.47),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "${productWeight.toStringAsFixed(2)} $productUnit",
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.black),
                  ),
                  child: const Center(
                    child: Icon(Icons.add),
                  ),
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.black),
                  ),
                  child: const Center(
                    child: Icon(Icons.remove),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
