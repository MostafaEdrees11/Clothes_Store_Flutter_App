import 'package:clothes_project/core/resources/app_colors.dart';
import 'package:clothes_project/core/resources/app_images.dart';
import 'package:clothes_project/models/product_model.dart';
import 'package:flutter/material.dart';

import '../../core/resources/app_button.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.product});

  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,

        centerTitle: true,
        title: Text(
          "Details",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),

        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back, size: 30)),
      ),

      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  width: 341,
                  height: 368,
                  child: Image.network(product.image ?? ""),
                ),
                SizedBox(height: 16),
                Text(
                  product.title??"Title",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.star, color: Color(0xFFFFA928)),
                    SizedBox(width: 4),
                    Text(
                      (product.rating?.rate).toString() + "/5",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 6),
                    Text(
                      "(" + (product.rating?.count).toString()+ " reviews)",
                      style: TextStyle(
                        color: Color(0xFF808080),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  product.description?? "Description",
                  style: TextStyle(
                    color: Color(0xFF808080),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: SizedBox(
        height: 105,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300, width: 1),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            spacing: 16,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Price",
                    style: TextStyle(
                      color: Color(0xFF808080),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "\$ " + product.price.toString(),
                    style: TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Expanded(child: AppButton(preIcon: Icon(Icons.add_shopping_cart, color: Colors.white),
                content: "Add to Cart",
                btnColor: AppColors.primaryColor,
                contentColor: Colors.white,
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

