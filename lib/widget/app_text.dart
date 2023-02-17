import 'package:flutter/cupertino.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textalign;
  double size;
  TextWidget(
      {Key? key,
      required this.text,
      required this.color,
      required this.size,
      required this.fontWeight,
      required this.textalign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}

const titles = [
  'Add Address',
  'Choose Your Favorite Food',
  'Fastest Delivery',
];

const about = [
  'Eind perfect restaurant nearby or place order at your favorite restaurant in few clicks',
  'A diverse list of different dining restaurants throughout the territory and around your area ',
  'Get your favorite food Fastest delivered at your doorstep'
];

const images = [
  'assets/images/0.png',
  'assets/images/1.png',
  'assets/images/2.png',
];
