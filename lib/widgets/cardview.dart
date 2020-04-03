import 'package:flutter/material.dart';

import '../item_screen.dart';
import '../widgets/icon_box.dart';

class CardView extends StatelessWidget {
  const CardView({this.cardTitle, this.price, this.category, this.imageName});

  final String cardTitle;
  final int price;
  final String category;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 230,
      padding: EdgeInsets.only(left: 20),
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            height: 320,
            width: 210,
          ),
          Positioned(
            left: 10,
            top: 15,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(ItemScreen.routeName);
              },
              child: Container(
                padding: EdgeInsets.only(
                  left: 36,
                ),
                height: 240,
                width: 160,
                child: Image.asset('assets/images/$imageName.png'),
              ),
            ),
          ),
          Positioned(
            top: 15,
            right: 20,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'FROM',
                    style: TextStyle(
                      color: Color(0xFFF0F0F0),
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    '\$$price',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 65,
            left: 27,
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    category,
                    style: TextStyle(
                      color: Color(0xFFF0F0F0),
                      fontSize: 9,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    cardTitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Wrap(
                    spacing: 10,
                    children: <Widget>[
                      IconBox(
                        iconName: Icons.wb_sunny,
                      ),
                      IconBox(
                        iconName: Icons.wb_cloudy,
                      ),
                      IconBox(
                        iconName: Icons.wb_iridescent,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 295,
            left: 80,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//onTap: () {
//Navigator.of(context).pushNamed(ItemScreen.routeName);
//},
