import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  final String text;
  final IconData icon;

  const IconWithText({
    this.text,
    this.icon,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        children: [
          Icon(
            icon,
            size: 30,
            color: Color(0xFF5FE5BC),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
