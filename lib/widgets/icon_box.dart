import 'package:flutter/material.dart';

class IconBox extends StatefulWidget {
  const IconBox({this.iconName});

  final IconData iconName;

  @override
  _IconBoxState createState() => _IconBoxState();
}

class _IconBoxState extends State<IconBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          width: 0.9,
          color: Color(0xFFF8F5F5),
        ),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Icon(
        widget.iconName,
        color: Colors.white,
        size: 20.0,
      ),
    );
  }
}
