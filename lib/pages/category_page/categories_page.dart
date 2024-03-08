import 'package:flutter/material.dart';

import 'package:layout_desiginig/pages/category_page/widgets/rating.dart';
import 'package:layout_desiginig/widgets/resuable/category_page/category_card.dart';
import 'package:layout_desiginig/widgets/resuable/category_page/selected_items.dart';
import 'package:layout_desiginig/widgets/shared/notificatio_widget.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Categories',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: const Icon(Icons.arrow_back),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const NotificatiosPopup(),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  "All Categories",
                  style: TextStyle(
                    color: Color(0xff3B3636),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CategoryCard(
                          mainTitle: "Vegetables & \nFruits",
                          description: "20+ more ...",
                          mainColor: Color(0xff0094FF),
                          categoryColor: Color(0xff0E00AC),
                        ),
                        CategoryCard(
                          mainTitle: "Cooking & \nElements",
                          description: "20+ more ...",
                          mainColor: Color(0xff00F0FF),
                          categoryColor: Color(0xff10C0F8),
                        ),
                        CategoryCard(
                          mainTitle: "Vegetables & \nFruits",
                          description: "20+ more ...",
                          mainColor: Color(0xffFFA800),
                          categoryColor: Color(0xffE56C6C),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CategoryCard(
                          mainTitle: "Bites & \nDrinks",
                          description: "20+ more ...",
                          mainColor: Color(0xff00FF29),
                          categoryColor: Color(0xff06FFA5),
                        ),
                        CategoryCard(
                          mainTitle: "Chicken & \nBeef",
                          description: "20+ more ...",
                          mainColor: Color(0xffFFB800),
                          categoryColor: Color(0xffFF9900),
                        ),
                        CategoryCard(
                          mainTitle: "Transport & \nVehicals",
                          description: "20+ more ...",
                          mainColor: Color(0xffCC00FF),
                          categoryColor: Color(0xffDB00FF),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  "Selected Items",
                  style: TextStyle(
                    color: Color(0xff3B3636),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  height: 600,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffE0DCD6).withOpacity(0.27),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: const Color(0xffE0DCD6).withOpacity(0.5),
                      width: 7,
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Vegetables",
                          style: TextStyle(
                            color: Color(0xff3B3636),
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SelectedItems(
                          itemDescription:
                              "Vegetables are parts of plants that are \nconsumed by humans...",
                          itemNumber: 1,
                        ),
                        SelectedItems(
                          itemDescription:
                              "Vegetables are parts of plants that are \nconsumed by humans...",
                          itemNumber: 2,
                        ),
                        SelectedItems(
                          itemDescription:
                              "Vegetables are parts of plants that are \nconsumed by humans...",
                          itemNumber: 3,
                        ),
                        SelectedItems(
                          itemDescription:
                              "Vegetables are parts of plants that are \nconsumed by humans...",
                          itemNumber: 4,
                        ),
                        SelectedItems(
                          itemDescription:
                              "Vegetables are parts of plants that are \nconsumed by humans...",
                          itemNumber: 5,
                        ),
                        Ratings(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
