import 'package:facebook_flutter/config/size_config.dart';
import 'package:flutter/material.dart';

Container buildFBAction() {
    return Container(
          height: getProportionateScreenHeight(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButtonIcon(
                color: Colors.red,
                content: "Live",
                icon: Icons.videocam,
                onPress: () {},
              ),
              VerticalDivider(
                width: 8,
              ),
              FlatButtonIcon(
                color: Colors.green,
                content: "Photo",
                icon: Icons.photo_library,
                onPress: () {},
              ),
              VerticalDivider(
                width: 8,
              ),
              FlatButtonIcon(
                color: Colors.purpleAccent,
                content: "Room",
                icon: Icons.video_call,
                onPress: () {},
              ),
            ],
          ),
        );
  }

class FlatButtonIcon extends StatelessWidget {
  const FlatButtonIcon({
    Key key,
    @required this.icon,
    @required this.content,
    @required this.color,
    @required this.onPress,
  }) : super(key: key);

  final IconData icon;
  final String content;
  final Color color;
  final GestureTapCallback onPress;

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      onPressed: onPress,
      icon: Icon(
        icon,
        color: color,
      ),
      label: Text(content),
    );
  }
}