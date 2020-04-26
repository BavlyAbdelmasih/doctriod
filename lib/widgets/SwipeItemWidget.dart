import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperWidget extends StatefulWidget {
  SwiperWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SwiperWidgetState createState() => new _SwiperWidgetState();
}

class _SwiperWidgetState extends State<SwiperWidget> {
  List<SwiperItem> s = [SwiperItem(), SwiperItem(), SwiperItem()];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 140),
      child: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return s[index];
        },
        itemCount: 3,
        viewportFraction: 0.8,
        scale: 0.90,
      ),
    );
  }
}

class SwiperItem extends StatelessWidget {
  const SwiperItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left : 4.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: <Color>[Colors.blue, Colors.green])),
        child: new Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "130\$",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              Text("For 3 months",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100, right: 100),
                child: Divider(
                  thickness: 2,
                  color: Colors.white,
                  indent: 5,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text("2 Doctors",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              SizedBox(
                height: 50,
              ),
              Text("5 Appoinment",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              SizedBox(
                height: 50,
              ),
              Text("3 hrs call",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              SizedBox(
                height: 50,
              ),
              OutlineButton(
                borderSide: BorderSide(color: Colors.white, width: 2),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "   Buy pack   ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
