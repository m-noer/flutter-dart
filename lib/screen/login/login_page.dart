import 'package:flutter/material.dart';
import 'package:flutter_rxdart/bloc/login_bloc.dart';
import 'package:flutter_rxdart/model/login_body/login_body.dart';
import 'package:flutter_rxdart/screen/product/product_page.dart';
import 'package:flutter_rxdart/theme/my_color.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.primary,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 30,
              right: 0,
              left: 0,
              child: Image(
                image: NetworkImage(
                    'https://cdn.dribbble.com/users/6067148/screenshots/14305616/media/b74310ae7ffa42379308dd048039ead8.png'),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  // height: 200,
                  padding: EdgeInsets.all(20),
                  // margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                          color: MyColor.primary,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      _buildTextFieldEmail(),
                      SizedBox(
                        height: 20,
                      ),
                      _buildTextFieldPassword(),
                      SizedBox(
                        height: 30,
                      ),
                      _buildLoginButton(),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTextFieldPassword() {
    return TextFormField(
      controller: password,
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: MyColor.primary,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: RaisedButton(
          onPressed: () {
            loginBloc
                .postLogin(
                    LoginBody(email: email.text, password: password.text))
                .then((_) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProductPage()));
            });
          },
          color: MyColor.primary,
          child: Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextFieldEmail() {
    return TextFormField(
      controller: email,
      decoration: InputDecoration(
        labelText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: MyColor.primary,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
