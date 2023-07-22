import 'package:flutter/material.dart';

import '../carditemclass.dart';

class TopCategories extends StatefulWidget {
  const TopCategories({Key? key}) : super(key: key);

  @override
  State<TopCategories> createState() => _TopCategoriesState();
}

class _TopCategoriesState extends State<TopCategories> {
  List<CardItem> category = [
    CardItem(
      platterimg: 'assets/TopCategorieslogo/img_1.png',
      title: 'Starters',
    ),
    CardItem(
      platterimg: 'assets/TopCategorieslogo/img_2.png',
      title: 'Drinks',
    ),
    CardItem(
      platterimg: 'assets/TopCategorieslogo/img_3.png',
      title: 'Rice',
    ),
    CardItem(
      platterimg: 'assets/TopCategorieslogo/img_4.png',
      title: 'Curry',
    ),
    CardItem(
      platterimg: 'assets/TopCategorieslogo/img_5.png',
      title: 'Desserts',
    ),
    CardItem(
      platterimg: 'assets/TopCategorieslogo/img_6.png',
      title: 'Starters',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    print(category.length);
    return Container(
        padding: const EdgeInsets.only(left: 0, right: 0),
        height: 100,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          separatorBuilder: (context, _) => const SizedBox(
            width: 0,
          ),
          itemBuilder: (context, index) => BuildCard(category[index]),
        ));
  }

  Widget BuildCard(CardItem item) => GestureDetector(
        onTap: () {},
        child: Container(
          width: 90,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.25),
          ),
          child: Column(
            children: <Widget>[
              Image.asset(
                item.platterimg,
                height: 70.2,
                width: 69.89,
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                item.title,
                style: TextStyle(
                  color: Color(0xFF030303),
                  fontSize: 12,
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      );
}
