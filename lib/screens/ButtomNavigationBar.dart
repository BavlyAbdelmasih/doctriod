import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Categories.dart';
import 'UserProfile.dart';

class MyStatefulWidget extends StatefulWidget {
  static final String id = '/main';

  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    categories(optionStyle: optionStyle),
    UserProfile(optionStyle: optionStyle),
    screen3(optionStyle: optionStyle),
    screen4(optionStyle: optionStyle),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[

            Column(
              children: <Widget>[

                new Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: <Color>[Colors.blue, Colors.green])),
                  child: new Column(
                    children: new List.generate(4, (int index) {
                      return new ListTile(
                        leading: new Icon(Icons.info),
                      );
                    }),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: TextStyle(color: Colors.black),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black12,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category, color: Colors.black12),
            title: Text('categories'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.black12),
            title: Text('profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black12,
            ),
            title: Text('cart'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlueAccent,
        selectedIconTheme: IconThemeData(color: Colors.lightBlueAccent),
        onTap: _onItemTapped,
      ),
    );
  }
}

class screen4 extends StatelessWidget {
  const screen4({
    Key key,
    @required this.optionStyle,
  }) : super(key: key);

  final TextStyle optionStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Index 2: School',
      style: optionStyle,
    );
  }
}

class screen3 extends StatelessWidget {
  const screen3({
    Key key,
    @required this.optionStyle,
  }) : super(key: key);

  final TextStyle optionStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Index 2: School',
      style: optionStyle,
    );
  }
}

class screen2 extends StatelessWidget {
  const screen2({
    Key key,
    @required this.optionStyle,
  }) : super(key: key);

  final TextStyle optionStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Index 1: Business',
      style: optionStyle,
    );
  }
}

class screen1 extends StatelessWidget {
  const screen1({
    Key key,
    @required this.optionStyle,
  }) : super(key: key);

  final TextStyle optionStyle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("screen 1"),
      ),
    );
  }
}
