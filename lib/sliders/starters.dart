import 'package:flutter/material.dart';

import '../carditemclass.dart';

class Starters extends StatefulWidget {
  const Starters({Key? key}) : super(key: key);

  @override
  State<Starters> createState() => _StartersState();
}

class _StartersState extends State<Starters> {
  List<CardItem> starter = [
    CardItem(
      platterimg: 'assets/Starters/img.png',
      title: 'Grill Chicken',
    ),
    CardItem(
      platterimg: 'assets/Starters/img_1.png',
      title: 'Mushroom Fry',
    ),
    CardItem(
      platterimg: 'assets/Starters/img_2.png',
      title: 'Veggie Fry',
    ),
    CardItem(
      platterimg: 'assets/Starters/img.png',
      title: 'Grill Chicken',
    ),
    CardItem(
      platterimg: 'assets/Starters/img_1.png',
      title: 'Mushroom Fry',
    ),
    CardItem(
      platterimg: 'assets/Starters/img_2.png',
      title: 'Veggie Fry',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white.withOpacity(0.15),
        height: 130,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: starter.length,
          separatorBuilder: (context, _) => const SizedBox(
            width: 4,
          ),
          itemBuilder: (context, index) => BuildCard(starter[index]),
        ));
  }

  Widget BuildCard(CardItem starter) => Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Stack(
          children: <Widget>[
            Container(
              height: 132,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 142,
                height: 118,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 5,
                      offset: Offset(-4, 2),
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12)),
                        child: Image.asset(starter.platterimg)),
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        starter.title,
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 15,
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
}
