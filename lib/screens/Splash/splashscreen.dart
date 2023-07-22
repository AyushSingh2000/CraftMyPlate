import 'package:craftmypalate/screens/Splash/walkthrough1.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
                duration: const Duration(milliseconds: 800),
                top: animate ? 250 : 280,
                left: 150,
                child: Container(
                  width: 88,
                  height: animate ? 110 : 80,
                  child: Image.asset(
                    'assets/logo.png',
                  ),
                )),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 900),
              bottom: 380,
              left: 130,
              child: Text(
                'Welcome',
                style: TextStyle(
                    color: Color(0xFFF7E5B7).withOpacity(animate ? 0 : 1),
                    fontSize: 32,
                    fontFamily: 'Capriola',
                    fontWeight: FontWeight.w400,
                    letterSpacing: animate ? 0 : 1),
              ),
            ),
            AnimatedPositioned(
              bottom: animate ? 380 : 300,
              left: 80,
              duration: Duration(milliseconds: 1900),
              child: Column(children: <Widget>[
                Text(
                  'Craft My Plate',
                  style: TextStyle(
                      color: Color(0xFFF7E5B7).withOpacity(animate ? 1 : 0),
                      fontSize: 38,
                      fontFamily: 'Capriola',
                      fontWeight: FontWeight.w400,
                      letterSpacing: animate ? 1 : 0),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'You customise, We cater',
                  style: TextStyle(
                    color: Color(0xFFD5B67D).withOpacity(animate ? 1 : 0),
                    fontSize: 16,
                    fontFamily: 'Courgette',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 1400));
    setState(() {
      animate = true;
    });
    await Future.delayed(Duration(milliseconds: 1600));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => WalkThrough()));
  }
}
