import 'package:facebook_flutter/config/size_config.dart';
import 'package:facebook_flutter/data/data.dart';
import 'package:facebook_flutter/screens/body_homepage.dart';
import 'package:flutter/material.dart';
import 'components/app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarHomePage(),
          BodyHomePage(currentUser: currentUser),
        ],
      ),
    );
  }
}
