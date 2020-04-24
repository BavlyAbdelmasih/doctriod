import 'package:doctriod/screens/DoctorProfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorListItem extends StatelessWidget {
  const DoctorListItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top :13.0,left: 13),
          child: GestureDetector(
            onTap: ()=> {
              Navigator.pushNamed(context, DoctorProfile.id)
            },
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileAvatar(s: 30.0,),
                  SizedBox(width: 12),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 15,
                              color: Colors.blue,
                            ),
                            Text("7 street mostafa kamel")
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left :0.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.directions,
                              color: Colors.black26,
                            ),
                            Text("0.7m"),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(
                              Icons.star_border,
                              color: Colors.blue,
                            ),
                            Text("  4.0"),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Divider(thickness: 2,)

      ],
    );
  }
}

class ProfileAvatar extends StatelessWidget {
  final s;

  const ProfileAvatar({
    Key key,  this.s
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://images.theconversation.com/files/304957/original/file-20191203-66986-im7o5.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip"),
          radius: s,
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: CircleAvatar(
            backgroundColor: Colors.lightGreen,
            radius: 5,
          ),
        ),
      ],
    );
  }
}
