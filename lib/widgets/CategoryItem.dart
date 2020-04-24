import 'package:doctriod/screens/Doctors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, doctors.id);
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        height: 400,
        width: 400,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5.0,
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
            top: BorderSide(width: 5.0, color: Colors.lightBlueAccent),
            left: BorderSide(width: 5.0, color: Colors.lightBlueAccent),
            right: BorderSide(width: 5.0, color: Colors.lightBlueAccent),
            bottom: BorderSide(width: 5.0, color: Colors.lightBlueAccent),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.account_circle,
              size: 60,
              color: Colors.deepPurpleAccent,
            ),
            Text("Find doctor")
          ],
        ),
      ),
    );
  }
}