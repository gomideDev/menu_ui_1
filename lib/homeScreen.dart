import 'package:flutter/material.dart';
import 'package:menu_ui_1/configuration.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactory = 1;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactory),
      duration: Duration(milliseconds: 250),
      color: Colors.grey[200],
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isDrawerOpen
                    ? IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: primaryGreen,
                        ),
                        onPressed: () {
                          setState(() {
                            xOffset = 0;
                            yOffset = 0;
                            scaleFactory = 1;
                            isDrawerOpen = false;
                          });
                        },
                      )
                    : IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          setState(() {
                            xOffset = 230;
                            yOffset = 150;
                            scaleFactory = 0.6;
                            isDrawerOpen = true;
                          });
                        },
                      ),
                Column(
                  children: [
                    Text('Local'),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: primaryGreen,
                        ),
                        Text('Brasil')
                      ],
                    )
                  ],
                ),
                CircleAvatar()
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.search),
                Text('Search pet to adopt'),
                Icon(Icons.settings)
              ],
            ),
          ),
          Container(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (_, index) {
                return Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(left: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: shadowList),
                        child: Image.asset(
                          categories[index]['iconPath'],
                          color: Colors.grey[700],
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Text(categories[index]['name'])
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            height: 240,
            child: Row(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
