import 'package:doctriod/screens/ButtomNavigationBar.dart';
import 'package:doctriod/screens/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class signin extends StatelessWidget {
  static const String id = '/signin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 100, right: 25, left: 25),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Sign In",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                alignLabelWithHint: true,
                hintText: "Enter your email",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2.0),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                hintText: "Enter your password",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2.0),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, signup.id);
                    },
                  ),
                  MaterialButton(
                    child: Text(
                      "Forget password ?",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
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
                      child: Text("Sign In"),
                      onPressed: () {
                        Navigator.pushNamed(context, MyStatefulWidget.id);
                      },
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 20.0),
              child: Center(
                child: Text(
                  "Or",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    width: 120,
                    height: 70,
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                        left:
                            BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                        right:
                            BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
                        bottom:
                            BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
                      ),
                    ),
                    child: Icon(
                      Icons.email,
                      size: 40,
                    )),
                Container(
                    width: 120,
                    height: 70,
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                        left:
                            BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                        right:
                            BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
                        bottom:
                            BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
                      ),
                    ),
                    child: Icon(
                      Icons.account_box,
                      size: 40,
                    )),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
