import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:layout_desiginig/widgets/app_bar/app_bar.dart';
import 'package:layout_desiginig/widgets/resuable/product_card.dart';
import 'package:layout_desiginig/widgets/resuable/product_price_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: leadingAppBar,
          title: appBarTitle,
          actions: [
            appBarAction,
          ],
          shadowColor: Color.fromARGB(121, 0, 0, 0),
          elevation: 3,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //search bar
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromARGB(56, 165, 165, 165),
                  ),
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 110, 107, 107),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          textAlignVertical: TextAlignVertical
                              .center, // Center align vertically
                          decoration: InputDecoration(
                            hintText: "Search here...",
                            border: InputBorder.none, // Remove underline
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 8.5,
                            ), // Adjust vertical padding
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),

                const Text(
                  "Explore Categories",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProductCard(
                      title: "Vegetables",
                      description:
                          "Vegetables are parts of plants that are consumed by humans...",
                      mainBgColor: Color(0xff9E00FF),
                      productBgColor: Color(0xff06FFA5),
                      titleColor: Color(0xffffffff),
                      descColor: Color(0xffC3C3C3),
                    ),
                    ProductCard(
                      title: "Fish & Meat",
                      description:
                          "Fish is the flesh of an animal used for food, and by that definition...",
                      mainBgColor: Color(0xff9E00FF),
                      productBgColor: Color(0xff06FFA5),
                      titleColor: Color(0xffffffff),
                      descColor: Color(0xffC3C3C3),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProductCard(
                      title: "Vegetables",
                      description:
                          "Vegetables are parts of plants that are consumed by humans...",
                      mainBgColor: Color(0xffFFE500),
                      productBgColor: Color(0xffFF9900),
                      titleColor: Color(0xff3B3636),
                      descColor: Color(0xff686060),
                    ),
                    ProductCard(
                      title: "Fish & Meat",
                      description:
                          "Fish is the flesh of an animal used for food, and by that definition...",
                      mainBgColor: Color(0xffFFE500),
                      productBgColor: Color(0xFFFF9900),
                      titleColor: Color(0xff3B3636),
                      descColor: Color(0xff686060),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),

                const Text(
                  "For Sale and Low Cost",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProductPriceCard(
                      price: 230,
                      size: 220,
                      title: "Washing Liquid",
                      sizeUnit: "ml",
                    ),
                    ProductPriceCard(
                      price: 230,
                      size: 120,
                      title: "Washing Liquid",
                      sizeUnit: "g",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
