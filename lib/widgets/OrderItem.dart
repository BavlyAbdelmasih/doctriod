import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'IconWithText.dart';
import 'ServiceListItem.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 3.0,
              // has the effect of softening the shadow
              spreadRadius: 4.0,
              // has the effect of extending the shadow
              offset: Offset(
                3.0, // horizontal, move right 10
                3.0, // vertical, move down 10
              ),
            )
          ],
          border: Border(
            top:
                BorderSide(width: 3.0, color: Color(0xFF5FE5BC).withAlpha(180)),
            left:
                BorderSide(width: 3.0, color: Color(0xFF5FE5BC).withAlpha(180)),
            right:
                BorderSide(width: 3.0, color: Color(0xFF5FE5BC).withAlpha(180)),
            bottom:
                BorderSide(width: 3.0, color: Color(0xFF5FE5BC).withAlpha(180)),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconWithText(
              icon: FontAwesomeIcons.calendarAlt,
              text: "02 - November - 2020 ",
            ),
            Divider(
              color: Colors.black12,
              indent: 4,
              thickness: 2,
              endIndent: 4,
            ),
            IconWithText(
              icon: FontAwesomeIcons.clock,
              text: "  12 am",
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Services",
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF19769f),
                  fontWeight: FontWeight.w700),
            ),
            Divider(
              color: Colors.black12,
              indent: 4,
              thickness: 2,
              endIndent: 4,
            ),
            ServiceListItem(
              serviceName: "Monthly checkup",
              servicePrice: "\$50",
              serviceDuration: "35 min",
            ),
            Divider(
              color: Colors.black12,
              indent: 4,
              thickness: 2,
              endIndent: 4,
            ),
            ServiceListItem(
              serviceName: "Weekly checkup",
              servicePrice: "\$150",
              serviceDuration: "35 min",
            ),
            Divider(
              color: Colors.black12,
              indent: 4,
              thickness: 2,
              endIndent: 4,
            ),
            Row(
              children: <Widget>[
                Text("Total", style: TextStyle(fontSize: 18)),
                Spacer(),
                Text("\$200",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
