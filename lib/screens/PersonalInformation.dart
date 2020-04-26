import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:doctriod/widgets/DoctorListItem.dart';
import 'package:flutter/material.dart';

class PersonalInfo extends StatelessWidget {
  static const String id = '/PersonalInfo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileAvatar(
                    s: 40.0,
                  ),
                  SizedBox(width: 12),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dr Bavly Abdel.",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Peditirian",
                          style: TextStyle(color: Colors.green, fontSize: 18),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            thickness: 2,

          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("About",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                      "nslndcsd jlkdskldc ;ljlskdskd kdnsd.nsdfnsd llsndfndsnfd kklsdflksdklfjsdf lkdkfljskdfjskd lkjdflkdjfksdj klsdfklsjdfks",
                      style: TextStyle(fontSize: 15)),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Address & Timing",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                SizedBox(
                  height: 10,
                ),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 15,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 10,),

                      Text("7 street mostafa kamel")
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 15,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 10,),

                      Text("7 street mostafa kamel")
                    ],
                  )
                ],
              )
              ],
            ),
          ),
          Divider(
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Certificates",
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                    leading: const Icon(Icons.adjust , color: Colors.lightBlue,),
                    title: const Text('CCNA'),
                    onTap: () {
                      /* react to the tile being tapped */
                    }),
                ListTile(
                    leading: const Icon(Icons.adjust,color: Colors.lightBlue),
                    title: const Text('BMSS'),
                    onTap: () {
                      /* react to the tile being tapped */
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
