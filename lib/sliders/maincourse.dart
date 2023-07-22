import 'package:flutter/material.dart';

import '../carditemclass.dart';

class MainCourse extends StatefulWidget {
  const MainCourse({Key? key}) : super(key: key);

  @override
  State<MainCourse> createState() => _MainCourseState();
}

class _MainCourseState extends State<MainCourse> {
  List<CardItem> course = [
    CardItem(
      platterimg: 'assets/MainCourse/img.png',
      title: 'Biryani',
    ),
    CardItem(
      platterimg: 'assets/MainCourse/img_1.png',
      title: 'Bread',
    ),
    CardItem(
      platterimg: 'assets/MainCourse/img_1.png',
      title: 'Plain Rice',
    ),
    CardItem(
      platterimg: 'assets/MainCourse/img.png',
      title: 'Biryani',
    ),
    CardItem(
      platterimg: 'assets/MainCourse/img_1.png',
      title: 'Bread',
    ),
    CardItem(
      platterimg: 'assets/MainCourse/img_1.png',
      title: 'Plain Rice',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white.withOpacity(0.15),
        height: 128,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: course.length,
          separatorBuilder: (context, _) => const SizedBox(
            width: 1,
          ),
          itemBuilder: (context, index) => BuildCard(course[index]),
        ));
  }

  Widget BuildCard(CardItem course) => Padding(
        padding: const EdgeInsets.only(left: 22.0),
        child: Stack(
          children: <Widget>[
            Container(
              height: 140,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 141,
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
                        child: Image.asset(course.platterimg)),
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10, top: 0),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        course.title,
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 16,
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
