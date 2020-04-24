import 'package:doctriod/screens/ButtomNavigationBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class signup extends StatelessWidget {
  static const String id = '/signup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 100 , right: 15 , left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                "Sign Up",
                style: TextStyle(fontSize: 40 , fontWeight: FontWeight.bold , color: Colors.blue),
              ),
              Padding(padding: EdgeInsets.only(top: 50)),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  hintText: "Enter your email",
                  focusedBorder:  OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                  ) ,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 30)),

              TextField(
                keyboardType: TextInputType.text,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  hintText: "Enter your name",
                  focusedBorder:  OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                  ) ,
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 30)),

              TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  hintText: "Enter your phone number",
                    focusedBorder:  OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 2.0),
                    ) ,
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                  )
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 30)),

              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  focusedBorder:  OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                  ) ,
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 30)),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  focusedBorder:  OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                  ) ,
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(

                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 30)),

              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 20.0, // has the effect of softening the shadow
                            spreadRadius: 5.0, // has the effect of extending the shadow
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
                      borderRadius: BorderRadius.circular(5)
                      ),
                      child: MaterialButton(
                        child: Text("Register"),
                        onPressed: (){
                          
                          Navigator.pushNamed(context, MyStatefulWidget.id);
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
}
