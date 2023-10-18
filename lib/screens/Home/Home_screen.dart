import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_challenge/screens/Home/grid.dart';
import 'package:ui_challenge/utils/constants.dart';
import 'package:ui_challenge/widgets/TextWidget.dart';
import 'package:ui_challenge/widgets/Topbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.appSecondColor,
        body: SafeArea(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(),
              SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 310,
                    child: TextField(
                      controller: _controller,
                      style: TextStyle(fontSize: 15),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(5),
                          hintText: "plants",
                          hintStyle: TextStyle(fontSize: 12),
                          filled: true,
                          fillColor: Constants.appWhite,
                          prefixIconColor: Colors.grey,
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            size: 25,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 48,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Constants.appWhite,
                        borderRadius: BorderRadius.circular(7)),
                    child: SvgPicture.asset(
                      "assets/svg/filter_icon.svg",
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 17,
              ),
              TextWidget(
                text: "Found 10 Results",
                size: 25,
              ),
              //Expanded(child: HomeGrid())
            ],
          ),
        )));
  }
}
