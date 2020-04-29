import 'package:doctriod/widgets/AvatarHeader.dart';
import 'package:doctriod/widgets/IconWithText.dart';
import 'package:doctriod/widgets/OrderItem.dart';
import 'package:doctriod/widgets/RoundIconButton.dart';
import 'package:flutter/material.dart';
import 'package:doctriod/screens/IntroductionScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InsuranceScreen extends StatelessWidget {
  static const String id = '/InsuranceScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text("Insurance Plans")),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: <Color>[Colors.blue, Colors.green])),
        ),
      ),
      body: InsurancePlans(),
    );
  }
}

class InsurancePlans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListView(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          PlanCard(),
          PlanCard(),
          PlanCard(),
        ],
      ),
    );
  }
}

class PlanCard extends StatelessWidget {
  const PlanCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 30,
      ),
      child: Stack(
        children: <Widget>[
          Container(
            height: 300,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 1.0,
                  // has the effect of softening the shadow
                  spreadRadius: 1.0,
                  // has the effect of extending the shadow
                  offset: Offset(
                    1.0, // horizontal, move right 10
                    1.0, // vertical, move down 10
                  ),
                )
              ],
              border: Border(
                top: BorderSide(
                    width: 2.0, color: Color(0xFF5FE5BC).withAlpha(150)),
                left: BorderSide(
                    width: 2.0, color: Color(0xFF5FE5BC).withAlpha(150)),
                right: BorderSide(
                    width: 2.0, color: Color(0xFF5FE5BC).withAlpha(150)),
                bottom: BorderSide(
                    width: 2.0, color: Color(0xFF5FE5BC).withAlpha(150)),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0, bottom: 0),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.skullCrossbones,
                        size: 30,
                        color: Color(0xFF5FE5BC),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Mostashfa Elmaganen",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.blue),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black12,
                  indent: 4,
                  thickness: 2,
                  endIndent: 4,
                ),
                Spacer(),
                Row(
                  children: <Widget>[
                    KeyValueColumn(
                      keyText: "Full name",
                      value: "Dr 3atef",
                    )
                  ],
                ),
                Spacer(),
                Spacer(),
                Row(
                  children: <Widget>[
                    KeyValueColumn(
                      keyText: "His Job",
                      value: "Fuck us ",
                    ),
                    Spacer(),
                    KeyValueColumn(
                      keyText: "His number",
                      value: "#112 ",
                    ),
                    Spacer(),
                  ],
                ),
                Spacer(),
                Spacer(),
                Row(
                  children: <Widget>[
                    KeyValueColumn(
                      keyText: "His age",
                      value: "100+n years",
                    ),
                    Spacer(),
                    KeyValueColumn(
                      keyText: "Plan ",
                      value: "Extra 5ara",
                    ),
                    Spacer(),
                  ],
                ),
                Spacer(),
                Spacer(),
              ],
            ),
          ),
          Positioned(
            top: -26,
            right: 20,
            child: RoundIconButton(
              icon: Icons.add,
              color: Color(0xFF19769f).withAlpha(250),
            ),
          )
        ],
        overflow: Overflow.visible,
      ),
    );
  }
}

class KeyValueColumn extends StatelessWidget {
  final String keyText;
  final String value;
  const KeyValueColumn({
    this.keyText,
    this.value,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          keyText,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w300,
            color: Colors.black38,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
