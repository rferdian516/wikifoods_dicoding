import 'package:flutter/material.dart';
import 'login.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: <Widget>[
        Container(
          height: 270.0,
          child: Stack(
            children: <Widget>[
              Align(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    CircleAvatar(
                        backgroundImage: AssetImage('assets/profile.jpeg'),
                        radius: 100)
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Card(
              elevation: 4,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 21.0,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.account_circle,
                            size: 40.0,
                            color: Colors.blue[400],
                          ),
                        ),
                        SizedBox(width: 24.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Nama",
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                            SizedBox(height: 4.0),
                            Text(
                              "REYNALDO FERDIAN SAPUTRA",
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
        Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Card(
              elevation: 4,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 21.0,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.mail_outline_rounded,
                            size: 40.0,
                            color: Colors.blue[400],
                          ),
                        ),
                        SizedBox(width: 24.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Email",
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                            SizedBox(height: 4.0),
                            Text(
                              "rferdian516@gmail.com",
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
        Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Card(
              elevation: 4,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 21.0,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.school_rounded,
                            size: 40.0,
                            color: Colors.blue[400],
                          ),
                        ),
                        SizedBox(width: 24.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Kampus",
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                            SizedBox(height: 4.0),
                            Text(
                              "ITN Malang",
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
        Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Card(
              elevation: 4,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 21.0,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          icon: Icon(
                            Icons.home_rounded,
                            size: 40.0,
                            color: Colors.blue[400],
                          ),
                        ),
                        SizedBox(width: 24.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Alamat",
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                            SizedBox(height: 4.0),
                            Text(
                              "MALANG, JAWA TIMUR",
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
        //
        Container(
            margin: EdgeInsets.all(20),
            height: 40,
            child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                hoverColor: Colors.white,
                color: Colors.blue[400],
                textColor: Colors.white,
                minWidth: 400,
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Kembali",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ))),
        SizedBox(height: 5)
      ],
    )));
  }
}
