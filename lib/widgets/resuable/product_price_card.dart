import 'package:flutter/material.dart';

class ProductPriceCard extends StatelessWidget {
  const ProductPriceCard({
    super.key,
    required this.title,
    required this.size,
    required this.price,
    required this.sizeUnit,
  });

  final title;
  final size;
  final price;
  final sizeUnit;
  final double cardHeight = 240;
  final double widthHeight = 190;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthHeight,
      height: cardHeight,
      decoration: BoxDecoration(
        color: const Color(0xff9E00FF),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 180,
            height: 120,
            decoration: BoxDecoration(
              color: const Color(0xff06FFA5),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    size.toString() + sizeUnit,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "${price}\$",
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffFFE500),
                    ),
                  ),
                ],
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: Colors.white,
                    width: 4,
                  ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
