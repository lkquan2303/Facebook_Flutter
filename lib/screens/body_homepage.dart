import 'package:facebook_flutter/config/size_config.dart';
import 'package:facebook_flutter/models/user_model.dart';
import 'package:facebook_flutter/screens/components/user_status.dart';
import 'package:flutter/material.dart';

import 'components/user_action.dart';

class BodyHomePage extends StatelessWidget {
  final User currentUser;

  const BodyHomePage({Key key, @required this.currentUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(12),
            vertical: getProportionateScreenHeight(8)),
        child: Column(
          children: [
            buildUserStatus(currentUser: currentUser),
            const Divider(height: 10.0, thickness: 0.5),
            buildFBAction()
          ],
        ),
      ),
    );
  }
}
