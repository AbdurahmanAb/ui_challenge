import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final String text;
  final IconData? icon;
  final String? asset;

  const TopBar({this.text = '', this.icon, this.asset, super.key});

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
            text,
            style: TextStyle(fontSize: 15),
          ),
          asset != null
              ? Image.asset(
                  asset!,
                  width: 40,
                  fit: BoxFit.cover,
                )
              : Icon(icon),
        ],
      ),
    );
  }
}
