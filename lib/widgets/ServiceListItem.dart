import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServiceListItem extends StatelessWidget {
  final String serviceName;
  final String servicePrice;
  final String serviceDuration;
  const ServiceListItem({
    this.serviceName,
    this.servicePrice,
    this.serviceDuration,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(serviceName, style: TextStyle(fontSize: 18)),
              Spacer(),
              Text(servicePrice, style: TextStyle(fontSize: 15))
            ],
          ),
          Text(serviceDuration,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF19769f)))
        ],
      ),
    );
  }
}
