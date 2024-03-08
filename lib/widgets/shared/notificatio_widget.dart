import 'package:flutter/material.dart';

class NotificatiosPopup extends StatelessWidget {
  const NotificatiosPopup({super.key});

  final double cardHeight = 80;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: cardHeight,
      decoration: BoxDecoration(
        color: const Color(0xffF2E4CE),
        border: Border.all(
          color: const Color(0xffFF9900),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Get 100% off on Groceries Plus T&C Apply",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xffFF9900),
              ),
            ),
            Text(
              "Sped payments with master and visa",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
