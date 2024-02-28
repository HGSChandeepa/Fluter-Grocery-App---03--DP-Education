import 'package:flutter/material.dart';

Widget leadingAppBar = Padding(
  padding: const EdgeInsets.all(5.0),
  child: Container(
    height: 30,
    width: 30,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 206, 14, 240),
      borderRadius: BorderRadius.circular(100),
    ),
    child: const Icon(
      Icons.add_location_alt,
      color: Colors.white,
    ),
  ),
);

Widget appBarTitle = const Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      "Delivery Address",
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Color.fromARGB(255, 165, 165, 165),
      ),
    ),
    Text(
      "92 High Street , London",
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Color.fromARGB(255, 61, 61, 61),
      ),
    ),
  ],
);

Widget appBarAction = Padding(
  padding: const EdgeInsets.all(2.0),
  child: Container(
    height: 45,
    width: 45,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 240, 153, 14),
      borderRadius: BorderRadius.circular(100),
    ),
    child: const Icon(
      Icons.add_location_alt,
      color: Colors.white,
    ),
  ),
);
