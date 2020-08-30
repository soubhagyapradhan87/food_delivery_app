import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/category_alert.dart';
import 'package:food_delivery_app/widgets/category_card.dart';
import 'package:food_delivery_app/widgets/top_info.dart';
import 'package:food_delivery_app/widgets/popular_near_you.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[50],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
            child: Column(
              children: [
                TopInfo(),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Popular Near You",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print("I' pressed");
                      },
                      child: Text(
                        "View more",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 280,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Popularnearyou(),
                      SizedBox(
                        width: 10.0,
                      ),
                      Popularnearyou(),
                      SizedBox(
                        width: 10.0,
                      ),
                      Popularnearyou(),
                      SizedBox(
                        width: 10.0,
                      ),
                      Popularnearyou(),
                      SizedBox(
                        width: 10.0,
                      ),
                      Popularnearyou(),
                      SizedBox(
                        width: 10.0,
                      ),
                      Popularnearyou(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Explore Categories",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: _showMyDialog,
                      child: Text(
                        "Show all",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 114,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CategoryCard(),
                      CategoryCard(),
                      CategoryCard(),
                      CategoryCard(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Category'),
          content: Container(
            height: 400,
            width: 300,
            child: GridView(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: [
                CategoryCard(),
                CategoryCard(),
                CategoryCard(),
                CategoryCard(),
                CategoryCard(),
                CategoryCard(),
                CategoryCard(),
                CategoryCard(),
                CategoryCard(),
                CategoryCard(),
                CategoryCard(),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
