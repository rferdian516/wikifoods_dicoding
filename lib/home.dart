import 'package:flutter/material.dart';
import 'package:wikifoods/profile.dart';

class Home extends StatefulWidget {
  final username;
  Home({this.username});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void pushProfile() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Profile()),
    );
  }

  @override
  Widget build(BuildContext context) {
    print(widget.username);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              // color: Colors.redAccent,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello, " + widget.username ?? '',
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      pushProfile();
                    },
                    icon: Icon(
                      Icons.account_circle,
                      size: 40.0,
                      color: Colors.blue[400],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 21.0,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/geprek.jpeg'),
                                  radius: 45),
                            ),
                            SizedBox(width: 24.0),
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    "Ayam Geprek",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  SizedBox(height: 4.0),
                                  Text(
                                    "Ayam penyet dengan sambal terasi",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 21.0,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/gado.jpeg'),
                                  radius: 45),
                            ),
                            SizedBox(width: 24.0),
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    "Gado-Gado",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  SizedBox(height: 4.0),
                                  Text(
                                    "Sayur-mayur dengan saus kacang",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 21.0,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/lontong.jpeg'),
                                  radius: 45),
                            ),
                            SizedBox(width: 24.0),
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    "Lontong Sayur",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  SizedBox(height: 4.0),
                                  Text(
                                    "Tauge, tahu dengan kuah semur",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 21.0,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/buah.jpeg'),
                                  radius: 45),
                            ),
                            SizedBox(width: 24.0),
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    "Rujak Buah",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  SizedBox(height: 4.0),
                                  Text(
                                    "Campuran buah segar",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 21.0,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/rujak.jpeg'),
                                  radius: 45),
                            ),
                            SizedBox(width: 24.0),
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    "Rujak Cingur",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  SizedBox(height: 4.0),
                                  Text(
                                    "Kikil, tahu, tempe dengan bumbu petis",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 21.0,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/tahu.jpeg'),
                                  radius: 45),
                            ),
                            SizedBox(width: 24.0),
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    "Tahu Telor",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  SizedBox(height: 4.0),
                                  Text(
                                    "Tahu & telor dengan bumbu petis",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
