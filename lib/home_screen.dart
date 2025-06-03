import 'package:flutter/material.dart';
import 'package:fluttermaddi62ecommerce/core/colors_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> coffeeType = [
    "Cappuccino",
    "Machiato",
    "Latte",
    "Amricano",
    "Ice Coffee",
  ];
  int selectedItem = 0;

  final List<Coffee> coffees = [
    Coffee(
      name: "Cappuccino",
      description: "with Chocolate",
      image: "assets/images/coffee1.png",
      price: 4.53,
      rating: 4.8,
    ),
    Coffee(
      name: "Cappuccino",
      description: "with Chocolate",
      image: "assets/images/coffee2.png",
      price: 4.53,
      rating: 4.8,
    ),
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // layer1
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: ColorsManager.backGroundColor,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, right: 16, top: 36),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Location",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                                Text(
                                  "Bilzen,Tanjungbalai",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: ColorsManager.lightGrey),
                                ),
                              ],
                            ),
                            Image.asset("assets/images/person.png")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Container(
                        width: 315,
                        height: 52,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(152, 152, 152, 0.5),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: TextFormField(
                                  cursorColor: Colors.white,
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    hintText: "Search coffee",
                                    hintStyle: TextStyle(
                                      color: Color.fromRGBO(152, 152, 152, 1),
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              Container(
                                width: 44,
                                height: 44,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(198, 124, 78, 1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(
                                  Icons.tune,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 112),
                        child: SizedBox(
                            height: 40,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: coffeeType.length,
                              itemBuilder: (context, index) {
                                bool isSelected = selectedItem == index;

                                return InkWell(
                                  onTap: () {
                                    selectedItem = index;
                                    setState(() {});
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4),
                                    child: Container(
                                      height: 38,
                                      decoration: BoxDecoration(
                                          color: isSelected
                                              ? ColorsManager.brown
                                              : ColorsManager.ListGrey,
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Text(
                                            coffeeType[index],
                                            style: TextStyle(
                                              color: isSelected
                                                  ? Colors.white
                                                  : ColorsManager
                                                      .blackTextColor,
                                              fontWeight: isSelected
                                                  ? FontWeight.w600
                                                  : FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            )),
                      ),
                      Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 8,
                                  crossAxisSpacing: 8,
                                  childAspectRatio: 1.2),
                          itemCount: 4,
                          itemBuilder: (ctx, inex) {
                            return Container();
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          //layer 2
          Positioned(
              left: 24,
              top: 220,
              child: Image.asset("assets/images/banner.png")),
        ],
      ),
    );
  }
}

class Coffee {
  final String name;
  final String description;
  final String image;
  final double price;
  final double rating;

  Coffee({
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.rating,
  });
}
