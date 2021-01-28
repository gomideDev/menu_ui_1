import 'package:flutter/material.dart';
import 'package:menu_ui_1/configuration.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50, bottom: 30, left: 10),
      color: primaryGreen,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/profile.jpg'),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Silas Sampaio',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Active status',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
          Column(
              children: drawerItems
                  .map((element) => Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Icon(
                              element['icon'],
                              color: Colors.white.withOpacity(0.7),
                              size: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              element['title'],
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 20),
                            )
                          ],
                        ),
                      ))
                  .toList()),
          Row(
            children: [
              Icon(
                Icons.settings,
                color: Colors.white.withOpacity(0.7),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Settings',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 2,
                height: 20,
                color: Colors.white.withOpacity(0.7),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Log out',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
