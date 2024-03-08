import 'package:flutter/material.dart';

class SelectedItems extends StatelessWidget {
  final int itemNumber;
  final String itemDescription;
  const SelectedItems({
    super.key,
    required this.itemNumber,
    required this.itemDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
              itemNumber.toString(),
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          itemDescription,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black54,
          ),
        )
      ],
    );
  }
}
