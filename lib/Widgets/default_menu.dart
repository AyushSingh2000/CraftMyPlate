import 'package:flutter/material.dart';

import '../carditemclass.dart';

class DefaultMenu extends StatefulWidget {
  const DefaultMenu({Key? key}) : super(key: key);

  @override
  State<DefaultMenu> createState() => _DefaultMenuState();
}

class _DefaultMenuState extends State<DefaultMenu> {
  List<CardItem> dmenu = [
    CardItem(
      platterimg: 'assets/img_4.png',
      title: 'Default platter',
    ),
    CardItem(
      platterimg: 'assets/img_5.png',
      title: 'Craft Your Own ',
    ),
    CardItem(
      platterimg: 'assets/img_4.png',
      title: 'Default platter',
    ),
    CardItem(
      platterimg: 'assets/img_5.png',
      title: 'Craft Your Own ',
    ),
    CardItem(
      platterimg: 'assets/img_4.png',
      title: 'Default platter',
    ),
    CardItem(
      platterimg: 'assets/img_5.png',
      title: 'Craft Your Own ',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.167),
      padding: const EdgeInsets.only(left: 0, right: 18),
      height: 164,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: dmenu.length,
        separatorBuilder: (context, _) => const SizedBox(
          width: 4,
        ),
        itemBuilder: (context, index) => BuildCard(dmenu[index]),
      ),
    );
  }

  Widget BuildCard(CardItem item) => GestureDetector(
        onTap: () {},
        child: Container(
          width: 185,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.25),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                left: 24,
                child: Container(
                  height: 158,
                  width: 159,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x33000000),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                        spreadRadius: 2,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 23,
                left: 12,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 7,
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 3,
                          offset: Offset(-4, 2))
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.black.withOpacity(0.2),
                  ),
                ),
              ),
              Positioned(
                  top: 16,
                  left: 6,
                  child: Image.asset(
                    'assets/img_7.png',
                    height: 92,
                  )),
              Positioned(
                top: 4,
                left: 50,
                child: Text(
                  'Default Menu 1',
                  style: TextStyle(
                    color: Color(0xFF242424),
                    fontSize: 15,
                    fontFamily: 'Lexend',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                  top: 32,
                  left: 102,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '3 starters ',
                        style: TextStyle(
                          color: Color(0xFF242424),
                          fontSize: 13,
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '3 maincourse ',
                        style: TextStyle(
                          color: Color(0xFF242424),
                          fontSize: 13,
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '3 desserts ',
                        style: TextStyle(
                          color: Color(0xFF242424),
                          fontSize: 13,
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '3 drinks ',
                        style: TextStyle(
                          color: Color(0xFF242424),
                          fontSize: 13,
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  )),
              Positioned(
                  top: 110,
                  left: 46,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.person,
                        size: 14,
                        color: Color(0xFF7E7E7E),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        'Min 800',
                        style: TextStyle(
                          color: Color(0xFF7E7E7E),
                          fontSize: 13,
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )),
              Positioned(
                  top: 130,
                  left: 50,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Starts at',
                        style: TextStyle(
                          color: Color(0xFF6318AF),
                          fontSize: 14,
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '₹ 777',
                        style: TextStyle(
                          color: Color(0xFF6318AF),
                          fontSize: 17,
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      );
}
