import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './widgets/cardview.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(
            top: 18,
            left: 10,
          ),
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 45,
                      width: 45,
                      child: Image.asset('assets/images/three_line_menu.png'),
                    ),
//                    Container(
//                      child: Text('VRIKSHAM'),
//                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF1F1F1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.shopping_cart),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 10,
                  top: 10,
                  bottom: 45,
                ),
                child: Text(
                  'Top Picks',
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  spacing: 15,
                  children: <Widget>[
                    CategoryTabs('Top'),
                    CategoryTabs('Outdoor'),
                    CategoryTabs('Indoor'),
                    CategoryTabs('Plant Pots'),
                    CategoryTabs('Easy Planted'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  spacing: 15,
                  children: <Widget>[
                    CardView(
                      cardTitle: 'Aloe Vera',
                      price: 27,
                      category: 'OUTDOOR',
                      imageName: 'plant4',
                    ),
                    CardView(
                      cardTitle: 'Monstera Deliciosa',
                      price: 36,
                      category: 'INDOOR',
                      imageName: 'plant1',
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Aloe Vera is a succulent plant species of the genus Aloe. It\'s medicinal'
                      'uses and air purifying ability make it the plant that you shoudn\'t live without.',
                      style: TextStyle(
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryTabs extends StatefulWidget {
  const CategoryTabs(this.title);
  final String title;

  @override
  _CategoryTabsState createState() => _CategoryTabsState();
}

class _CategoryTabsState extends State<CategoryTabs> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (!isTapped) {
            isTapped = true;
          } else {
            isTapped = false;
          }
        });
      },
      child: Container(
        child: Text(
          widget.title,
          style: TextStyle(
            fontWeight: isTapped ? FontWeight.w900 : FontWeight.w300,
            fontSize: 18,
            color: isTapped ? Colors.black : Colors.grey,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 15),
      ),
    );
  }
}
