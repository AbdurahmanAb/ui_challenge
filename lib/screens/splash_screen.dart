import 'dart:async';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_challenge/screens/Home/Home_screen.dart';
import 'package:ui_challenge/utils/constants.dart';
import 'package:ui_challenge/widgets/TextWidget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _controller = PageController();
  double _currentPage = 0;
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page!;
      });
    });
  }

  void nextPage() {
    _currentPage == 2
        ? Navigator.push(
            context, MaterialPageRoute(builder: (contex) => HomeScreen()))
        : _controller.nextPage(
            duration: Duration(
                milliseconds: 700), // Set the duration of the animation
            curve: Curves.ease, // Set the curve of the animation
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Align(
              alignment: Alignment.topRight,
              child: Text("Skip"),
            ),
            Container(
              height: 420,
              width: double.maxFinite,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/pictures/plant1.png",
                          fit: BoxFit.cover,
                          // height: 150,
                          width: 280,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/pictures/plant2.png",
                          fit: BoxFit.cover,
                          width: 280,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/pictures/plant3.png",
                          fit: BoxFit.cover,
                          width: 280,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            DotsIndicator(
              dotsCount: 3,
              position: _currentPage.toInt(),
              decorator: DotsDecorator(
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  //sizes: Size.square(15),
                  activeSize: const Size(25, 10),
                  activeColor: Constants.appMainColor,
                  size: Size.square(9)),
            ),
            TextWidget(
              text: "Plants For Healty Home, Enjoy Your Life",
              size: 30,
            ),
            Container(
              child: GestureDetector(
                onTap: nextPage,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Constants.appMainColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
