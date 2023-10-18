import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
          ),
          Text(
            "Search For Products",
            style: TextStyle(fontSize: 15),
          ),
          Image.asset(
            "assets/pictures/user_avatar.png",
            width: 40,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
