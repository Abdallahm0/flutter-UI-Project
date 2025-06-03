import 'package:flutter/material.dart';

import '../core/colors_manager.dart';
import '../order_screen.dart';

class SizeWidget extends StatefulWidget {
  const SizeWidget({super.key});

  @override
  State<SizeWidget> createState() => _SizeWidgetState();
}

class _SizeWidgetState extends State<SizeWidget> {
  String? selectedSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Size',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ColorsManager.blackTextColor),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildSizeButton('S'),
                  _buildSizeButton('M'),
                  _buildSizeButton('L'),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: ColorsManager.lightGrey,
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    'Price',
                    style: TextStyle(
                        color: ColorsManager.greyTextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '\$4.5',
                    style: TextStyle(
                        color: ColorsManager.brown,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OrderScreen()),
                  );
                },
                child: Container(
                  width: 217,
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: ColorsManager.brown),
                  child: Center(
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSizeButton(String size) {
    final isSelected = selectedSize == size;
    return InkWell(
      onTap: () {
        setState(() {
          selectedSize = size;
        });
      },
      child: Container(
        width: 96,
        height: 43,
        decoration: BoxDecoration(
            color: isSelected ? ColorsManager.lightBrown : Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
                color:
                    isSelected ? ColorsManager.brown : ColorsManager.lightGrey,
                width: 1.5)),
        child: Center(
            child: Text(
          size,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              color: isSelected
                  ? ColorsManager.brown
                  : ColorsManager.blackTextColor,
              fontSize: 14),
        )),
      ),
    );
  }
}
