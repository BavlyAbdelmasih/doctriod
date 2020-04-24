import 'package:doctriod/widgets/DoctorListItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorProfile extends StatelessWidget {
  static const id = '/DoctorProfile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text("Profile")),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: <Color>[Colors.blue, Colors.green])),
        ),
      ),
      body: docProf(),
    );
  }
}

class docProf extends StatelessWidget {
  const docProf({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top :37.0 ,  right: 10,left: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 110.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 55.0),
                    child: ProfileAvatar(s: 40.0),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star_border,
                        color: Colors.blue,
                        size: 30,
                      ),
                      Text(
                        "4.0",
                        style: TextStyle(fontSize: 15, color: Colors.blue),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Text(
                  "Dr Bavly Abdel.",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Peditirian",
                  style: TextStyle(color: Colors.black12),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.photo_camera,
                      color: Colors.blue,
                      size: 35,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "photos",
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.directions,
                      color: Colors.blue,
                      size: 35,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "  0.7km",
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.blue,
                      size: 35,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "call",
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 10,
              child: ListTile(
                  leading: const Icon(Icons.account_circle),
                  title: const Text('Personal information'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    /* react to the tile being tapped */
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 10,
              child: ListTile(
                  leading: const Icon(Icons.place),
                  title: const Text('Working places'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    /* react to the tile being tapped */
                  }),
            ),
            SizedBox(
              height: 40,
            ),
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
                      child: Text("Book Appoinment" , style: TextStyle(color: Colors.white),),
                      onPressed: () {
                       // Navigator.pushNamed(context, MyStatefulWidget.id);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
