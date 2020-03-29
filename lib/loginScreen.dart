import 'package:appchamcong/homeScreen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _user = TextEditingController();
  TextEditingController _pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Đăng nhập'),),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(30, 150, 30, 10),
          color: Colors.white30,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Text(
                  'Đăng nhập để chấm công',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                child: TextField(
                  controller: _user,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                      labelText: 'Tài khoản',
                      labelStyle:
                          TextStyle(color: Color(0xffd888888), fontSize: 15)),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 35),
                child: TextField(
                  controller: _pass,
                  obscureText: true,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                      labelText: 'Mật khẩu',
                      labelStyle:
                          TextStyle(color: Color(0xffd888888), fontSize: 15)),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: SizedBox(
                  height: 56,
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    color: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
