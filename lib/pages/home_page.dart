// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:restaurant_app/theme/theme.dart';
import 'package:restaurant_app/components/promo-item.dart';
import 'package:restaurant_app/components/menu-category.dart';

class HomePage extends StatefulWidget {
  TextEditingController searchController;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Column(children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.arrow_back),
                            SizedBox(width: 12),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Alamatmu', style: bodyTextStyle),
                                  Text('Jl. Soekarno Hatta No. 4, Madiun',
                                      style: addressTextStyle)
                                ]),
                          ],
                        ),
                        Icon(Icons.history)
                      ],
                    ),
                    SizedBox(height: 16),
                    TextField(
                        controller: widget.searchController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: textFieldColor,
                          hintText: 'Mau makan apa hari ini?',
                          hintStyle: secondaryTextStyle,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                            borderSide: BorderSide.none,
                          ),
                        )),
                  ])),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Kategori
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Pilih kategori', style: headerTextStyle),
                        Text('Lihat semua', style: seeMoreTextStyle)
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MenuCategory(
                          imagePath: 'fxemoji_potoffood.png',
                          categoryName: 'Menu Sehat',
                        ),
                        MenuCategory(
                          imagePath: 'promo_icon.png',
                          categoryName: 'Promo',
                        ),
                        MenuCategory(
                          imagePath: 'whh_chicken.png',
                          categoryName: 'Menu Ayam',
                        ),
                        MenuCategory(
                          imagePath: 'fast-food_1.png',
                          categoryName: 'Cepat Saji',
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    // Promo
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Voila Promo!', style: headerTextStyle),
                        Text('Lihat semua', style: seeMoreTextStyle)
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text('Ada promo apa ya di sini?', style: bodyTextStyle),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                        height: 170,
                        child: ListView(
                          clipBehavior: Clip.none,
                          scrollDirection: Axis.horizontal,
                          children: [
                            PromoItem(
                              itemName: 'Beef Crispy',
                              imagePath: 'intersect.png',
                              beforeDiscount: '15.000',
                              afterDiscount: '12.000',
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            PromoItem(
                              itemName: 'Fruits With Garlic',
                              imagePath: 'intersect-1.png',
                              beforeDiscount: '24.000',
                              afterDiscount: '22.000',
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            PromoItem(
                              itemName: 'Banana Bread',
                              imagePath: 'intersect-2.png',
                              beforeDiscount: '15.000',
                              afterDiscount: '10.500',
                            )
                          ],
                        )),
                    SizedBox(
                      height: 24,
                    ),
                    Text('Wah ada resto enak, loh!', style: headerTextStyle),
                    SizedBox(
                      height: 4,
                    ),
                    Text('Yuk cobain!', style: bodyTextStyle),
                    SizedBox(
                      height: 12,
                    ),
                    DefaultTabController(
                        length: 3, // length of tabs
                        initialIndex: 0,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Container(
                                child: TabBar(
                                  labelColor: primaryColor,
                                  unselectedLabelColor: textInactiveColor,
                                  indicatorColor: primaryColor,
                                  indicatorWeight: 3,
                                  labelStyle: labelTextStyle,
                                  tabs: [
                                    Tab(text: 'Terbaru'),
                                    Tab(text: 'Pupolar'),
                                    Tab(text: 'Rekomendasi'),
                                  ],
                                ),
                              ),
                              Container(
                                  height: 400,
                                  decoration: BoxDecoration(
                                      border: Border(
                                          top: BorderSide(
                                              color: Colors.grey, width: 1))),
                                  child: TabBarView(children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(top: 16),
                                      child: Column(
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 70,
                                                width: 80,
                                                color: Colors.grey,
                                              ),
                                              SizedBox(width: 16),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text('Nama resto'),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.star),
                                                      Icon(Icons.star),
                                                      Icon(Icons.star),
                                                      Icon(Icons.star),
                                                      Icon(Icons.star),
                                                      Text('4.5')
                                                    ],
                                                  ),
                                                  Text('4.5 km')
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text('Display Tab 2',
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text('Display Tab 3',
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                  ]))
                            ])),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
