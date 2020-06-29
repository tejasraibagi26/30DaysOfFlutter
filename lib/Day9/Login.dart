import 'package:Days30/Day7/Statisfy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoggedIn = false;
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  login() async {
    try {
      await _googleSignIn.signIn();
      setState(() {
        isLoggedIn = true;
        print(isLoggedIn);
      });
      Navigator.pushReplacement(
          context,
          CupertinoPageRoute(
              builder: (context) => Statisfy(
                    username: _googleSignIn.currentUser.displayName,
                    imageURl: _googleSignIn.currentUser.photoUrl,
                    email: _googleSignIn.currentUser.email,
                  )));
    } catch (err) {
      print(err);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff2193b0), Color(0xff6dd5ed)])),
          child: SafeArea(
              child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Statisfy",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "AppleSF",
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                  Text(
                    "Satisfy your daily goals!",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "AppleSF",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () => login(),
                    child: Container(
                      height: 60,
                      width: size.width * 0.8,
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.google,
                            color: Colors.black,
                          ),
                          Text(
                            "Sign In with Google",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "AppleSF",
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ))),
    );
  }
}
