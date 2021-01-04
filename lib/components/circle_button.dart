import 'package:facebook_flutter/config/size_config.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    Key key,
    @required this.icon,
    @required this.press,
    @required this.iconSize,
  }) : super(key: key);
  final IconData icon;
  final GestureTapCallback press;
  final int iconSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration:
          BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
      child: IconButton(
        icon: Icon(icon),
        color: Colors.black,
        iconSize: getProportionateScreenHeight(iconSize),
        onPressed: press,
      ),
    );
  }
}
