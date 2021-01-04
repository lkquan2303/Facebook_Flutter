import 'package:facebook_flutter/components/circle_button.dart';
import 'package:facebook_flutter/config/constants.dart';
import 'package:facebook_flutter/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

SliverAppBar buildAppBar() {
  return SliverAppBar(
    brightness: Brightness.light,
    backgroundColor: Colors.white,
    title: Text(
      "facebook",
      style: TextStyle(
        fontSize: getProportionateScreenHeight(25),
        color: kPrimaryColor,
        fontWeight: FontWeight.bold,
        letterSpacing: -1.2,
      ),
    ),
    centerTitle: false,
    floating: true,
    actions: [
      CircleButton(
        icon: Icons.search,
        press: () {},
        iconSize: 25,
      ),
      CircleButton(
        icon: MdiIcons.facebookMessenger,
        press: () {},
        iconSize: 25,
      ),
    ],
  );
}
class AppBarHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return SliverAppBar(
    brightness: Brightness.light,
    backgroundColor: Colors.white,
    title: Text(
      "facebook",
      style: TextStyle(
        fontSize: getProportionateScreenHeight(25),
        color: kPrimaryColor,
        fontWeight: FontWeight.bold,
        letterSpacing: -1.2,
      ),
    ),
    centerTitle: false,
    floating: true,
    actions: [
      CircleButton(
        icon: Icons.search,
        press: () {},
        iconSize: 25,
      ),
      CircleButton(
        icon: MdiIcons.facebookMessenger,
        press: () {},
        iconSize: 25,
      ),
    ],
  );
  }
}