import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_flutter/models/user_model.dart';
import 'package:flutter/material.dart';

Row buildUserStatus({User currentUser}) {
  return Row(
    children: [
      CircleAvatar(
        radius: 20.0,
        backgroundImage: CachedNetworkImageProvider(currentUser.imageUrl),
      ),
      const SizedBox(
        width: 10.0,
      ),
      Expanded(
        child: TextField(
          decoration: InputDecoration.collapsed(
            hintText: "What do you thinking?",
            hintStyle: TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
      ),
    ],
  );
}
