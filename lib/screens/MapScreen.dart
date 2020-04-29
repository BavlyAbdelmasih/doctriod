import 'package:doctriod/widgets/AvatarHeader.dart';
import 'package:doctriod/widgets/RoundIconButton.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:latlong/latlong.dart';

class MapScreen extends StatelessWidget {
  static const String id = '/’MapScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text("Map")),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: <Color>[Colors.blue, Colors.green])),
        ),
      ),
      body: Stack(
        children: <Widget>[
          MapWidget(),
          _buildContainer(),
          Align(
            alignment: Alignment.topCenter,
            child: Stack(children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Material(
                  color: Colors.white,
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(3.0),
                  shadowColor: Color(0x802196F3),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(
                                  FontAwesomeIcons.dotCircle,
                                  size: 20,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 1,
                                  height: 10,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Cairo , el tahrir square",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.black12,
                          indent: 4,
                          thickness: 2,
                          endIndent: 50,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              children: <Widget>[
                                Container(
                                  width: 1,
                                  height: 10,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Icon(
                                  FontAwesomeIcons.dotCircle,
                                  size: 20,
                                  color: Color(0xFF5FE5BC),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Cairo , madenat nasr",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 35,
                bottom: 36,
                child: Icon(
                  Icons.swap_vert,
                  size: 37,
                  color: Colors.lightBlue,
                ),
              )
            ]),
          ),
          Positioned(
            bottom: 180,
            right: 30,
            child: FloatingActionButton(
              child: Icon(FontAwesomeIcons.locationArrow),
              backgroundColor: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

class MapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(51.5, -0.09),
        zoom: 13.0,
      ),
      layers: [
        TileLayerOptions(
          urlTemplate: "https://api.tiles.mapbox.com/v4/"
              "{id}/{z}/{x}/{y}@2x.png?access_token={accessToken}",
          additionalOptions: {
            'accessToken':
                'pk.eyJ1IjoiYWJvc2FtcmFhYSIsImEiOiJjazlrZDJ0Z3IwNWczM21scno2OXk3ODg1In0.JQtAXzdoumxMU6riQ-1UFw',
            'id': 'mapbox.streets',
          },
        ),
        MarkerLayerOptions(
          markers: [
            Marker(
              width: 80.0,
              height: 80.0,
              point: LatLng(51.5, -0.09),
              builder: (ctx) => Container(
                child: FlutterLogo(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

Widget _buildContainer() {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 150.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SizedBox(width: 10.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _boxes(),
          ),
          SizedBox(width: 10.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _boxes(),
          ),
          SizedBox(width: 10.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _boxes(),
          ),
        ],
      ),
    ),
  );
}

class _boxes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8),
          child: Material(
            color: Colors.white,
            elevation: 14.0,
            borderRadius: BorderRadius.circular(3.0),
            shadowColor: Color(0x802196F3),
            child: Container(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  AvatarHeader(
                    name: "Dr. ahmed sameh",
                    avatarSize: 25,
                    nameFontSize: 15,
                  ),
                  RoundIconButton(
                    icon: Icons.call,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
