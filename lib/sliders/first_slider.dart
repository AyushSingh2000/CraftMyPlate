import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class FirstSlider extends StatefulWidget {
  const FirstSlider({Key? key}) : super(key: key);

  @override
  State<FirstSlider> createState() => _FirstSliderState();
}

class _FirstSliderState extends State<FirstSlider> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: const EdgeInsets.only(left: 24),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 0),
              child: Stack(
                children: [
                  Container(
                    width: 340,
                    height: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage('assets/img_2.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 14,
                    top: 80,
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(2),
                      dashPattern: const [3, 3],
                      color: Colors.grey,
                      strokeWidth: 1.4,
                      child: Container(
                        height: 33,
                        width: 138,
                        child: Center(
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'FIRSTPLATE01',
                              style: TextStyle(
                                color: Color(0xFFF7E5B7),
                                fontSize: 14,
                                fontFamily: 'Lexend',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 14,
                    top: 14,
                    child: Container(
                      height: 60,
                      width: 165,
                      child: const Text(
                        'Enjoy your first order, the taste of our delicious food!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Container(
              padding: const EdgeInsets.only(right: 24),
              child: Stack(
                children: [
                  Container(
                    width: 340,
                    height: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage('assets/img_6.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 14,
                    top: 80,
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(2),
                      dashPattern: const [3, 3],
                      color: Colors.grey,
                      strokeWidth: 1.4,
                      child: Container(
                        height: 33,
                        width: 138,
                        child: Center(
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'FIRSTPLATE01',
                              style: TextStyle(
                                color: Color(0xFFF7E5B7),
                                fontSize: 14,
                                fontFamily: 'Lexend',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 14,
                    top: 14,
                    child: Container(
                        height: 60,
                        width: 165,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              'Delicious food!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontFamily: 'Lexend',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'for happy life',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Lexend',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        )),
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
