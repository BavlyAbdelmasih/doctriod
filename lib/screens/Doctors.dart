import 'package:doctriod/widgets/DoctorListItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class doctors extends StatelessWidget {
  static const String id = '/doctors';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text("Doctors")),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: <Color>[Colors.blue, Colors.green])),
        ),
      ),
      body: ListView(
        children: <Widget>[
          DoctorListItem(),
          DoctorListItem(),
          DoctorListItem(),
          DoctorListItem(),
          DoctorListItem(),
          DoctorListItem(),
          DoctorListItem(),
          DoctorListItem(),
          DoctorListItem(),
          DoctorListItem(),
          DoctorListItem(),
          DoctorListItem(),

        ],
      ),
    );
  }
}

