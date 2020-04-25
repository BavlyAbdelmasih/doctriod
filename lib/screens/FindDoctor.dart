import 'package:doctriod/screens/Doctors.dart';
import 'package:flutter/material.dart';

class FingDoctor extends StatefulWidget {
  @override
  static const String id = '/findDoctor';

  @override
  _FingDoctorState createState() => _FingDoctorState();
}

class _FingDoctorState extends State<FingDoctor> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Categories")),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: <Color>[Colors.blue, Colors.green])),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 50, right: 15, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Find Doctor",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              Padding(padding: EdgeInsets.only(top: 50)),
              FindDoctorDropItem("Specialist"),
              Padding(padding: EdgeInsets.only(top: 30)),
              FindDoctorDropItem("date"),
              Padding(padding: EdgeInsets.only(top: 30)),
              FindDoctorDropItem("current Location"),
              Padding(padding: EdgeInsets.only(top: 30)),
              FindDoctorDropItem("Gender"),
              Padding(padding: EdgeInsets.only(top: 30)),
              FindDoctorDropItem("Specialist"),
              Padding(padding: EdgeInsets.only(top: 30)),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 20.0,
                              // has the effect of softening the shadow
                              spreadRadius: 5.0,
                              // has the effect of extending the shadow
                              offset: Offset(
                                10.0, // horizontal, move right 10
                                10.0, // vertical, move down 10
                              ),
                            )
                          ],
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [Colors.blue, Colors.green]),
                          borderRadius: BorderRadius.circular(5)),
                      child: MaterialButton(
                        child: Text("Search"),
                        onPressed: () {
                          Navigator.pushNamed(context, doctors.id);
                        },
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget FindDoctorDropItem(String name) {
    String dropdownValue = name;

    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1.0, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                child: new DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: dropdownValue,
                    icon: Icon(Icons.keyboard_arrow_down),
                    iconSize: 24,
                    style: TextStyle(color: Colors.black26, fontSize: 20),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>['Specialist', 'date', 'Gender', 'current Location']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
