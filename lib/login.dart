import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //deklarasi controler inputan
  final _usernameController = new TextEditingController();
  String output = '';

  pushHome() {
    var username = _usernameController.text;
    if (username != '') {
      setState(() {
        this.output = username;
        _usernameController.dispose();
      });
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home(username: this.output)),
      );
    } else {
      Fluttertoast.showToast(
          msg: "Masukan Nama Anda",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.redAccent,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/login.jpg'),
                width: 200,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Masukan Nama Anda",
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _usernameController,
                keyboardType: TextInputType.text,
                // decoration: customTextField(
                //     "username",
                //     Icon(Icons.mail_rounded,
                //         color: const Color(0xff128c7e)))
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  hoverColor: Colors.white,
                  color: Colors.blue[400],
                  textColor: Colors.white,
                  minWidth: 400,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  onPressed: () {
                    pushHome(); //fungsi login
                  },
                  child: Text(
                    "Masuk",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            ],
          ))
    ]));
  }
}
