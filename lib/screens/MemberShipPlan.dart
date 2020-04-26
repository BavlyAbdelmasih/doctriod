import 'package:doctriod/screens/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MemberShip extends StatefulWidget {
  static const String id = '/MemberShip';

  @override
  _MemberShipState createState() => _MemberShipState();
}

class _MemberShipState extends State<MemberShip> {
  Color c1 = Colors.lightBlue;
  Color c2 = Colors.white;
  Color tc1 = Colors.black;
  Color tc2 = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text("Profile")),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: <Color>[Colors.blue, Colors.green])),
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top :35.0),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 190.0),
                  child: new MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      side: BorderSide(
                          width: 1.0,
                          style: BorderStyle.solid,
                          color: Colors.black26),
                    ),
                    elevation: 5.0,
                    minWidth: 200.0,
                    height: 50,
                    color: c2,
                    child: new Text('Care',
                        style: new TextStyle(fontSize: 16.0, color: tc1)),
                    onPressed: () {
                      setState(() {
                        c2 = Colors.lightBlue;
                        c1 = Colors.white;
                        tc2 = Colors.black;
                        tc1 = Colors.white;
                      });
                    },
                  ),
                ),
                new MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0))
                  ,              side: BorderSide(width: 0),

                  ),
                  elevation: 5.0,
                  minWidth: 200.0,
                  height: 50,
                  color: c1,
                  child: new Text('Extra Care',
                      style: new TextStyle(fontSize: 16.0, color:tc2)),
                    onPressed: () {
                    setState(() {
                      c1 = Colors.lightBlue;
                      c2 = Colors.white;
                      tc1 = Colors.black;
                      tc2 = Colors.white;
                    });
                  },
                ),
              ],
            ),
          ),
         Expanded(child: SwiperWidget())
        ],
      ),
    );
  }
}
