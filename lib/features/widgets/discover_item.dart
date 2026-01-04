import 'package:flutter/material.dart';

import '../../core/resources/app_images.dart';

class DiscoverItem extends StatelessWidget {
  const DiscoverItem({
    super.key,
    required this.dicoverItemImage,
    required this.dicoverItemTitle,
    required this.dicoverItemPrice,
  });

  final String dicoverItemImage;
  final String dicoverItemTitle;
  final String dicoverItemPrice;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 224,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: 161,
              height: 174,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.network(dicoverItemImage,),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  dicoverItemTitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  "\$ $dicoverItemPrice",
                  style: TextStyle(
                    color: Color(0xFF808080),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
