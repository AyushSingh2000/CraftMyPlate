import 'package:flutter/material.dart';

class Walkthrough2 extends StatefulWidget {
  const Walkthrough2({Key? key}) : super(key: key);

  @override
  State<Walkthrough2> createState() => _Walkthrough2State();
}

class _Walkthrough2State extends State<Walkthrough2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(children: <Widget>[
        Column(children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
                height: 350,
                child: Stack(
                  children: [
                    Positioned(
                      top: 120,
                      left: 110,
                      child: Container(
                        width: 171.51,
                        height: 171.30,
                        child: Image.asset('assets/onboarding/img.png'),
                      ),
                    ),
                    Positioned(
                      top: 210,
                      left: 300,
                      child: Container(
                        width: 40.62,
                        height: 82.40,
                        child: Image.asset('assets/onboarding/img_1.png'),
                      ),
                    ),
                    Positioned(
                      top: 195,
                      left: 30,
                      child: Container(
                        width: 84.88,
                        height: 95.02,
                        child: Image.asset('assets/onboarding/img_2.png'),
                      ),
                    ),
                    Positioned(
                      top: 295,
                      left: 50,
                      child: Container(
                        width: 280,
                        child: Image.asset('assets/onboarding/img_3.png'),
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Create Your Own Plate',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xFF030303),
                fontSize: 28,
                fontFamily: 'Lexend',
                fontWeight: FontWeight.w400,
                letterSpacing: 1),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 328,
            child: Text(
              'Create unforgettable memories with our unique feature to curate your favorite cuisines and food, tailored to your special occasion.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF7B7B7B),
                fontSize: 18,
                fontFamily: 'Lexend',
                fontWeight: FontWeight.w300,
                letterSpacing: 1,
              ),
            ),
          )
        ]),
      ]),
    );
  }
}

/*
 */
/*
 */
