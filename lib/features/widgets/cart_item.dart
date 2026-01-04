import 'package:clothes_project/features/widgets/counter.dart';
import 'package:flutter/material.dart';

import '../../core/resources/app_images.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.cartItemImage,
    required this.cartItemTitle,
    required this.cartItemDescription,
    required this.cartItemPrice,
    required this.cartItemCount,
  });

  final String cartItemImage;
  final String cartItemTitle;
  final String cartItemDescription;
  final String cartItemPrice;
  final String cartItemCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      margin: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400, width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: SizedBox(
        height: 107,
        child: Row(
          spacing: 16,
          children: [
            Expanded(flex: 1, child: Image.asset(cartItemImage, width: 83)),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            cartItemTitle,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Icons.delete_forever_outlined,
                            color: Colors.red,
                            size: 25,
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text(
                        cartItemDescription,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Color(0xFF808080),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        cartItemPrice,
                        style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Counter(),
                      // Row(
                      //   spacing: 6,
                      //   children: [
                      //     Container(
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(5),
                      //         border: Border.all(color: Colors.grey.shade400),
                      //       ),
                      //       child: Icon(Icons.remove),
                      //     ),
                      //     Text(
                      //       cartItemCount,
                      //       style: TextStyle(
                      //         color: Color(0xFF1A1A1A),
                      //         fontSize: 12,
                      //         fontWeight: FontWeight.w500,
                      //       ),
                      //     ),
                      //     Container(
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(5),
                      //         border: Border.all(color: Colors.grey.shade400),
                      //       ),
                      //       child: Icon(Icons.add),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
