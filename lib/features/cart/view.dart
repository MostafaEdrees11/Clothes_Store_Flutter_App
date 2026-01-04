import 'package:clothes_project/core/resources/app_button.dart';
import 'package:clothes_project/core/resources/app_images.dart';
import 'package:flutter/material.dart';

import '../../core/resources/app_colors.dart';
import '../widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,

        centerTitle: true,
        title: Text(
          "My Cart",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),

        leading: SizedBox.shrink(),
      ),

      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => CartItem(
                  cartItemImage: AppImages.shoesImage,
                  cartItemTitle: "T Shirt",
                  cartItemDescription: "Size L",
                  cartItemPrice: "\$ 1,190",
                  cartItemCount: "2",
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: SizedBox(
        height: 235,
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 12, vertical: 2),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sub-total",
                        style: TextStyle(
                          color: Color(0xFF808080),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "\$ 5.870",
                        style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "VAT (%)",
                        style: TextStyle(
                          color: Color(0xFF808080),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "\$ 0.00",
                        style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shipping fee",
                        style: TextStyle(
                          color: Color(0xFF808080),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "\$ 80",
                        style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4,),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                    height: 20,
                    indent: 10,
                  ),
                  SizedBox(height: 4,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "\$ 5.950",
                        style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16,),
              AppButton(
                content: "Go To Checkout",
                postIcon: Icon(
                  Icons.arrow_forward,
                  size: 25,
                  color: Colors.white,
                ),
                btnColor: AppColors.primaryColor,
                contentColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
