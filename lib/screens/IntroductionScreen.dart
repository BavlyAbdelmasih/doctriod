import 'package:doctriod/screens/SignIn.dart';
import 'package:doctriod/screens/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';


class mainPage extends StatefulWidget {
  static const String id = '/';
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
          image: Image.asset("images/icon-doctor.png"),
          title: "Live Demo page 1",
          body: "Welcome to Proto Coders Point",
          footer: Text("Footer Text here "),
          decoration: const PageDecoration(
            pageColor: Colors.blue,
          )),
      PageViewModel(
        image: Image.asset("images/icon-doctor.png"),
        title: "Live Demo page 2 ",
        body: "Live Demo Text",
        footer: Text("Footer Text  here "),
      ),
      PageViewModel(
        image: Image.asset("images/icon-doctor.png"),
        title: "Live Demo page 3",
        body: "Welcome to Proto Coders Point",
        footer: Text("Footer Text  here "),
      ),
      PageViewModel(
        image: Image.asset("images/icon-doctor.png"),
        title: "Live Demo page 4 ",
        body: "Live Demo Text",
        footer: Text("Footer Text  here "),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: getPages(),
        showNextButton: true,
        showSkipButton: true,
        skip: Text("Skip"),
        done: Text("Got it "),
        onDone: () {
          Navigator.pushNamed(context, signin.id);
        },
      ),
    );
  }
}