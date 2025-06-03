import 'package:flutter/material.dart';

import '../core/colors_manager.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 24,
              color: Colors.black,
            )),
        Text(
          "Details",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: ColorsManager.blackTextColor),
        ),
        IconButton(
            onPressed: () {
              isFav = !isFav;
              setState(() {});
            },
            icon: Icon(
              isFav == false ? Icons.favorite_border : Icons.favorite,
              size: 24,
              color: Colors.black,
            )),
      ],
    );
  }
}
