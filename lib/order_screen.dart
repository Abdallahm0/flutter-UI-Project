import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermaddi62ecommerce/core/colors_manager.dart';
import 'package:fluttermaddi62ecommerce/details_screen.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  String selectedOption = "Deliver";
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32, left: 8, right: 8),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Order",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      width:
                          48), // To balance the layout (same width as IconButton)
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 24.0, horizontal: 18.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedOption = "Deliver";
                        });
                      },
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                          color: selectedOption == "Deliver"
                              ? ColorsManager.brown
                              : ColorsManager.lightGrey,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Deliver",
                            style: TextStyle(
                              color: selectedOption == "Deliver"
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedOption = "Pick Up";
                        });
                      },
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                          color: selectedOption == "Pick Up"
                              ? ColorsManager.brown
                              : ColorsManager.lightGrey,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Pick Up",
                            style: TextStyle(
                              color: selectedOption == "Pick Up"
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delivery Address",
                    style: TextStyle(
                      color: ColorsManager.blackTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 14),
                  Text(
                    "Jl. Kpg Sutoyo",
                    style: TextStyle(
                      color: ColorsManager.blackTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 14),
                  Text(
                    "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
                    style: TextStyle(
                      color: ColorsManager.lightgrey2,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        // TODO: Implement edit address functionality
                      },
                      icon: Icon(Icons.edit,
                          color: ColorsManager.brown, size: 18),
                      label: Text(
                        "Edit Address",
                        style: TextStyle(
                          color: ColorsManager.brown,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: ColorsManager.lightGrey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 10),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        // TODO: Implement add note functionality
                      },
                      icon: Icon(Icons.note_add_outlined,
                          color: ColorsManager.brown, size: 18),
                      label: Text(
                        "Add Note",
                        style: TextStyle(
                          color: ColorsManager.brown,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: ColorsManager.lightGrey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 10),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Divider(
                  height: 31, thickness: 1, color: ColorsManager.lightGrey),
            ),

            // Coffee item row
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      "assets/images/coffee_detail.png", // Change to your image path
                      width: 48,
                      height: 48,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cappuccino",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: ColorsManager.blackTextColor,
                          ),
                        ),
                        Text(
                          "with Chocolate",
                          style: TextStyle(
                            fontSize: 12,
                            color: ColorsManager.greyTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove_circle_outline,
                            color: ColorsManager.brown),
                        onPressed: () {
                          setState(() {
                            if (quantity > 1) quantity--;
                          });
                        },
                      ),
                      Text(
                        "$quantity",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: ColorsManager.blackTextColor,
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.add_circle_outline,
                            color: ColorsManager.brown),
                        onPressed: () {
                          setState(() {
                            quantity++;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Discount box
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: ColorsManager.lightGrey,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                child: Row(
                  children: [
                    Icon(Icons.discount_outlined,
                        color: ColorsManager.brown, size: 20),
                    SizedBox(width: 8),
                    Text(
                      "1 Discount is applied",
                      style: TextStyle(
                        color: ColorsManager.brown,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Payment Summary
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Payment Summary",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: ColorsManager.blackTextColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Price",
                          style:
                              TextStyle(color: ColorsManager.blackTextColor)),
                      Text("\$ 4.53",
                          style: TextStyle(fontWeight: FontWeight.w600)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery Fee",
                          style:
                              TextStyle(color: ColorsManager.blackTextColor)),
                      Row(
                        children: [
                          Text("\$ 2.0",
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: ColorsManager.greyTextColor)),
                          SizedBox(width: 4),
                          Text("\$ 1.0",
                              style: TextStyle(fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                      height: 31, thickness: 1, color: ColorsManager.lightGrey),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Payment",
                          style: TextStyle(fontWeight: FontWeight.w600)),
                      Text("\$ 5.53",
                          style: TextStyle(fontWeight: FontWeight.w600)),
                    ],
                  ),
                ],
              ),
            ),

            // Payment method row
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
              child: Row(
                children: [
                  Icon(Icons.money, color: ColorsManager.brown),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: ColorsManager.brown,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Cash",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "\$ 5.53",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: ColorsManager.blackTextColor,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.more_horiz, color: ColorsManager.greyTextColor),
                ],
              ),
            ),

            // Order button
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 16.0),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: Implement order action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorsManager.brown,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Text(
                    "Order",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
