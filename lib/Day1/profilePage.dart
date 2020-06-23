
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'socialBtn.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isDarkMode = false;

  void changeTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              icon: isDarkMode
                  ? Icon(Icons.lightbulb_outline, color: Colors.white)
                  : Icon(Icons.brightness_2, color: Color(0xff121212)),
              onPressed: () => changeTheme(),
              splashColor: Colors.transparent,
            ),
          )
        ],
        title: Text(
          "Day 1",
          style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontWeight: FontWeight.bold,
              color: isDarkMode ? Colors.white : Color(0xff121212)),
        ),
        backgroundColor: isDarkMode ? Color(0xff121212) : Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: isDarkMode ? Color(0xff121212) : Colors.white,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 200,
                  width: 200,
                  child: CircleAvatar(
                    backgroundColor:
                        isDarkMode ? Colors.white : Color(0xff121212),
                    backgroundImage: AssetImage("images/profile.jpg"),
                    radius: 100,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      boxShadow: [
                        BoxShadow(
                            color:
                                isDarkMode ? Colors.black26 : Colors.grey[500],
                            offset: Offset(4.0, 4.0),
                            blurRadius: 15,
                            spreadRadius: 1.0),
                        BoxShadow(
                            color: isDarkMode ? Colors.black45 : Colors.white,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 15,
                            spreadRadius: 1.0)
                      ]),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Tejas Raibagi",
                  style: TextStyle(
                    color: isDarkMode ? Colors.white : Color(0xff121212),
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Flutter Developer | 21",
                  style: TextStyle(
                    color: isDarkMode ? Colors.white : Color(0xff121212),
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                SocialButtons(
                  isDarkMode: isDarkMode,
                  socialHandle: "tejasraibagi26",
                  socialIcon: FontAwesomeIcons.github,
                ),
                SizedBox(
                  height: 20,
                ),
                SocialButtons(
                  isDarkMode: isDarkMode,
                  socialHandle: "tejasraibagi",
                  socialIcon: FontAwesomeIcons.instagram,
                ),
                SizedBox(
                  height: 20,
                ),
                SocialButtons(
                  isDarkMode: isDarkMode,
                  socialHandle: "Portfolio",
                  socialIcon: FontAwesomeIcons.portrait,
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
