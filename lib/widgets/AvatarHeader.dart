import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AvatarHeader extends StatelessWidget {
  final name;
  final double nameFontSize;
  final double avatarSize;
  final String bottomText;
  final IconData bottomIcon;
  const AvatarHeader({
    @required this.name,
    this.nameFontSize = 25.0,
    this.avatarSize = 45.0,
    this.bottomText = "4.5",
    this.bottomIcon = FontAwesomeIcons.star,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileAvatar(
                s: avatarSize,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: nameFontSize,
                        color: Color(0xFF19769f),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Bams ,MPMS",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Icon(
                        bottomIcon,
                        size: 15,
                        color: Color(0xFF5FE5BC),
                      ),
                      SizedBox(width: 5),
                      Text(
                        bottomText,
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileAvatar extends StatelessWidget {
  final s;
  final imgUrl =
      "https://images.theconversation.com/files/304957/original/file-20191203-66986-im7o5.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip";
  const ProfileAvatar({Key key, this.s}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(imgUrl),
          radius: s,
        ),
      ],
    );
  }
}
