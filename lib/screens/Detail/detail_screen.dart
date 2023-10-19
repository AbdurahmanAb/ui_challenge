import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_challenge/utils/constants.dart';
import 'package:ui_challenge/widgets/TextWidget.dart';
import 'package:ui_challenge/widgets/Topbar.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final PageController _pageController = PageController();
  late double _pageNumber;
  void initState() {
    super.initState();
    //  _pageNumber = _pageController.page!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TopBar(
                icon: Icons.shopping_cart_outlined,
              ),
            ),
            // PageView(
            //   controller: _pageController,
            //   children: [

            //   ],
            // )
            Image.asset(
              "assets/pictures/plant9.png",
              height: 300,
            ),
            TextWidget(
              text: "Luke Jade Plant",
              size: 25,
            ),

            Text(
              "lorem ipsum flutter dolor bigegn mrt neber a nde nigga whats' up that ma duddue",
              style: TextStyle(fontSize: 17),
            ),
            Container(
              height: 230,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Constants.appMainColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          SvgPicture.asset(
                            "assets/svg/height_icon.svg",
                            height: 45,
                          ),
                          TextWidget(
                            text: "Height",
                            color: Colors.white,
                          ),
                          Text(
                            "150 -250M",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            "assets/svg/temperature_icon.svg",
                            height: 45,
                          ),
                          TextWidget(color: Colors.white, text: "Temprature"),
                          Text(
                            "150 -250M",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            "assets/svg/bag_fill_icon.svg",
                            height: 45,
                          ),
                          TextWidget(color: Colors.white, text: "Pot"),
                          Text(
                            "Clean Pot",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            TextWidget(
                              text: "Total Size",
                              color: Colors.white,
                            ),
                            TextWidget(
                              text: "12.99",
                              color: Colors.white,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 92, 121, 54),
                              borderRadius: BorderRadius.circular(15)),
                          child: TextWidget(
                            text: "Add to Cart",
                            color: Constants.appWhite,
                          ),
                        )
                        //4ElevatedButton(onPressed: () {}, child: Text("data"))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
