import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/pages/HomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  var _ctrlUsername = TextEditingController();
  var _ctrlPassword = TextEditingController();

  void _onPressed(BuildContext context) {
    if (_ctrlUsername.text == '' || _ctrlPassword.text == '') {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('username and password is empty!')),
      );
    } else if (_ctrlUsername.toString().length < 2 ||
        _ctrlPassword.toString().length < 3) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('username and password is empty!')),
      );
    } else if (_ctrlUsername.toString().length > 20 ||
        _ctrlPassword.toString().length > 30) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('username and password is empty!')),
      );
    } else {
      Navigator.push(context, MaterialPageRoute(
        builder: (builder) {
          return HomePage();
        },
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('P Nation Ent.'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  'assets/logo.png',
                  scale: 2,
                ),
              ),
              Expanded(
                  child: Column(
                children: [
                  Text('Welcome'),
                  TextField(
                    decoration: InputDecoration(hintText: 'username'),
                    controller: _ctrlUsername,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: 'password'),
                    controller: _ctrlPassword,
                    obscureText: true,
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: () => _onPressed(context),
                      child: Text('LOGIN'),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
