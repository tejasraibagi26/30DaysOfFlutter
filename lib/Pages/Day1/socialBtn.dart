import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    Key key,
    @required this.isDarkMode,
    this.socialIcon,
    this.socialHandle,
    this.url,
  }) : super(key: key);

  final bool isDarkMode;
  final IconData socialIcon;
  final String socialHandle;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(
                color: isDarkMode ? Colors.grey[900] : Colors.grey[500],
                offset: Offset(4.0, 4.0),
                blurRadius: 15,
                spreadRadius: 0.5),
            BoxShadow(
                color: isDarkMode ? Colors.grey[900] : Colors.white,
                offset: Offset(-4.0, -4.0),
                blurRadius: 15,
                spreadRadius: 1.0)
          ]),
      width: MediaQuery.of(context).size.width * 0.8,
      child: CupertinoButton(
          color: isDarkMode ? Colors.white : Color(0xff121212),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(
                socialIcon,
                color: isDarkMode ? Colors.black : Colors.white,
                size: 30,
              ),
              SizedBox(width: 40,),
              Text(
                socialHandle,
                style: TextStyle(
                  color: isDarkMode ? Color(0xff121212) : Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              )
            ],
          ),
          onPressed: () {}),
    );
  }
}