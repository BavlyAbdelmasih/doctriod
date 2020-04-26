import 'package:doctriod/widgets/AvatarHeader.dart';
import 'package:doctriod/widgets/OrderItem.dart';
import 'package:flutter/material.dart';
import 'package:doctriod/screens/IntroductionScreen.dart';

class AppointmentDetailsScreen extends StatelessWidget {
  static const String id = '/AppointmentDetailsScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text("Appointment Details")),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: <Color>[Colors.blue, Colors.green])),
        ),
      ),
      body: AppointmentDetails(),
    );
  }
}

class AppointmentDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          AvatarHeader(
            name: "Dr. hosny",
          ),
          SizedBox(
            height: 20,
          ),
          OrderItem(),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: CancelButton(
              text: "Cancel Appoinment",
            ),
          ),
        ],
      ),
    );
  }
}

class CancelButton extends StatelessWidget {
  final String text;

  const CancelButton({
    this.text,
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border(
                top: BorderSide(width: 3.0, color: Colors.black26),
                left: BorderSide(width: 3.0, color: Colors.black26),
                right: BorderSide(width: 3.0, color: Colors.black26),
                bottom: BorderSide(width: 3.0, color: Colors.black26),
              ),
            ),
            child: MaterialButton(
              child: Text(
                text,
                style: TextStyle(color: Colors.black38),
              ),
              onPressed: () {
                Navigator.pushNamed(context, mainPage.id);
              },
            ),
          ),
        ),
      ],
    );
  }
}
