// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:layout_desiginig/widgets/resuable/product_details_page/price_card.dart';
import 'package:layout_desiginig/widgets/resuable/product_details_page/products_desc.dart';
import 'package:layout_desiginig/widgets/shared/gradient_button.dart';
import 'package:layout_desiginig/widgets/shared/notificatio_widget.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Product Details',
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
                height: 15,
              ),
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffFFF500).withOpacity(
                    0.27,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Icon(
                    Icons.card_travel,
                    size: 200,
                    color: const Color(0xff333333).withOpacity(
                      0.67,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const ProductDesc(
                title: "Product Information",
                description:
                    "vegetable,  in the broadest sense, any kind of plant life or plant product, namely “vegetable matter”; in common, narrow usage, the term vegetable usually refers to the fresh edible portions of certain herbaceous plants—roots, stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten fresh or prepared in a number of ways, usually as a savory, rather than sweet, dish.",
              ),
              const SizedBox(
                height: 15,
              ),
              const ProductDesc(
                title: "Product Information",
                description:
                    "vegetable,  in the broadest sense, any kind of plant life or plant product, namely “vegetable matter”; in common, narrow usage, the term vegetable usually refers to the fresh edible portions of certain herbaceous plants—roots, stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten fresh or prepared in a number of ways, usually as a savory, rather than sweet, dish.",
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Price List",
                style: TextStyle(
                  color: Color(0xff3B3636),
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const PriceCard(
                productName: "Green Butter",
                productNumber: 1,
                productUnit: "g",
                productWeight: 1000,
              ),
              const Divider(),
              const PriceCard(
                productName: "Green Butter and Fish",
                productNumber: 2,
                productUnit: "g",
                productWeight: 56,
              ),
              const Divider(),
              const PriceCard(
                productName: "Fish Tuna",
                productNumber: 3,
                productUnit: "g",
                productWeight: 450,
              ),
              const Divider(),
              const PriceCard(
                productName: "Pepsi",
                productNumber: 4,
                productUnit: "l",
                productWeight: 1.5,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Total:",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "223 \$",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff9E00FF),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: GradientButton(
                  topColor: Color(0xffCC00FF),
                  bottomColor: Color(0xffFFE500),
                  title: "Proceed To Pay",
                  buttonWidth: 300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
