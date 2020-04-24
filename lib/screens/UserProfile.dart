import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final optionStyle;

  const UserProfile({
    Key key,
    @required this.optionStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double iconSize = 40;

    return Scaffold(
        body: Center(
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: <Color>[Colors.blue, Colors.green])),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 100),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                color: Colors.white),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, top: 50),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://images.theconversation.com/files/304957/original/file-20191203-66986-im7o5.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip"),
                                radius: 50,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Captin Hosny",
                              style: TextStyle(fontSize: 30),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Table(
                                border: TableBorder.all(color: Colors.black26),
                                children: [
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(children: [
                                        Text('Age'),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text('33')
                                      ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(children: [
                                        Text('Blood'),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text('Settings')
                                      ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(children: [
                                        Text('Gender'),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text('Ideas')
                                      ]),
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(children: [
                                        Text('Height'),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text('My Account')
                                      ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(children: [
                                        Text('Weight'),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text('Settings')
                                      ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(children: [
                                        Text('Goal'),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text('Ideas')
                                      ]),
                                    ),
                                  ]),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                               color: Colors.lightBlue
                              ),
                              child: Card(
                                elevation: 10,
                                
                                child: ListTile(
                                    leading: const Icon(Icons.account_circle),
                                    title: const Text('Personal information'),
                                    trailing: const Icon(Icons.arrow_forward_ios),
                                    onTap: () {
                                      /* react to the tile being tapped */
                                    }),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.lightBlue
                              ),
                              child: Card(
                                elevation: 10,
                                child: ListTile(
                                    leading: const Icon(Icons.place),
                                    title: const Text('Working places'),
                                    trailing: const Icon(Icons.arrow_forward_ios),
                                    onTap: () {
                                      /* react to the tile being tapped */
                                    }),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.lightBlue
                              ),
                              child: Card(
                                elevation: 10,
                                child: ListTile(
                                    leading: const Icon(Icons.place),
                                    title: const Text('Working places'),
                                    trailing: const Icon(Icons.arrow_forward_ios),
                                    onTap: () {
                                      /* react to the tile being tapped */
                                    }),
                              ),
                            ),


                          ],
                        ),
                      ],
                    ),
                  ),
                ))));
  }
}
