import 'package:flutter/material.dart';
import 'package:fluttermaddi62ecommerce/core/colors_manager.dart';
import 'package:fluttermaddi62ecommerce/widgets/header_widget.dart';
import 'package:fluttermaddi62ecommerce/widgets/size_widget.dart';
import 'package:rich_readmore/rich_readmore.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(height: 32),
          HeaderWidget(),
          SizedBox(height: 32),
          Center(child: Image.asset("assets/images/coffee_detail.png")),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cappucino',
                  style: TextStyle(
                    color: ColorsManager.blackTextColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'with Chocolate',
                  style: TextStyle(
                      color: ColorsManager.greyTextColor, fontSize: 12),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.star,
                      color: ColorsManager.yellow,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "4.8",
                      style: TextStyle(
                        color: ColorsManager.blackTextColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "(280)",
                      style: TextStyle(
                          color: ColorsManager.greyTextColor, fontSize: 12),
                    ),
                    Spacer(),
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: ColorsManager.lightYellow,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Image.asset("assets/images/bean.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: ColorsManager.lightYellow,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Image.asset("assets/images/milk.png"),
                    ),
                  ],
                ),
                SizedBox(height: 32),
                Text(
                  'Description',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: ColorsManager.blackTextColor),
                ),
                SizedBox(height: 15),
                RichReadMoreText.fromString(
                  text:
                      'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..',
                  textStyle: TextStyle(color: ColorsManager.greyTextColor),
                  settings: LengthModeSettings(
                    trimLength: 100,
                    trimCollapsedText: 'Read More',
                    trimExpandedText: ' Read less ',
                    onPressReadMore: () {
                      /// specific method to be called on press to show more
                    },
                    onPressReadLess: () {
                      /// specific method to be called on press to show less
                    },
                    lessStyle: TextStyle(
                        color: ColorsManager.brown,
                        fontWeight: FontWeight.bold),
                    moreStyle: TextStyle(
                        color: ColorsManager.brown,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          SizeWidget(),
        ],
      ),
    );
  }
}
