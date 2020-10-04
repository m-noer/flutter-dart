import 'package:flutter/material.dart';
import 'package:flutter_rxdart/model/login_body/login_body.dart';
import 'package:flutter_rxdart/model/login_response/login_response.dart';
import 'package:flutter_rxdart/model/user/user.dart';
import 'package:flutter_rxdart/screen/login/login_page.dart';
import 'package:flutter_rxdart/theme/my_color.dart';

import 'bloc/login_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: MyColor.primary,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Loginpage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter RxDart'),
      ),
      body: StreamBuilder<LoginResponse>(
        stream: loginBloc.subject.stream,
        builder: (context, AsyncSnapshot<LoginResponse> snapshot) {
          return ListView(
            padding: EdgeInsets.all(20),
            children: [
              TextField(
                controller: email,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 45,
                child: RaisedButton(
                  onPressed: () async {
                    loginBloc.postLogin(
                        LoginBody(email: email.text, password: password.text));
                  },
                  color: Colors.blue,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              snapshot.hasData ? Text(snapshot.data.token) : SizedBox(),
            ],
          );
        },
      ),
    );
  }
}
