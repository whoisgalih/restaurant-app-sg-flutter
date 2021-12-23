// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:restaurant_app/theme/theme.dart';

class PromoItem extends StatelessWidget {
  final String beforeDiscount;
  final String afterDiscount;
  final String imagePath;
  final String itemName;

  PromoItem({
    this.beforeDiscount,
    this.afterDiscount,
    this.imagePath,
    this.itemName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              color: Color(0x1F000000), blurRadius: 10, offset: Offset(0, 1)),
        ],
      ),
      child: Stack(alignment: Alignment.bottomCenter, children: [
        Image(
          image: AssetImage('assets/images/promo-food/' + imagePath),
        ),
        Container(
          padding: EdgeInsets.only(top: 12, left: 12, right: 12, bottom: 6),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(4),
                  bottomRight: Radius.circular(4))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(itemName, style: promoTextStyle),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(afterDiscount, style: addressTextStyle),
                  SizedBox(
                    width: 12,
                  ),
                  Text(beforeDiscount, style: beforeDiscountTextStyle)
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
