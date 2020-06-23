import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradient_text/gradient_text.dart';
import 'dart:ui' as ui;

class CommercialPage extends StatefulWidget {
  @override
  _CommercialPageState createState() => _CommercialPageState();
}

class _CommercialPageState extends State<CommercialPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: GradientText(
          "NALAYAKs",
          gradient:
              LinearGradient(colors: [Color(0xffa8ff78), Color(0xff78ffd6)]),
          style: TextStyle(
              color: Colors.black,
              fontFamily: "AppleSF",
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.userCircle,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: size.height * 0.7,
                  // color: Colors.lightBlueAccent.withOpacity(.3),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: size.height * .7,
                        width: size.width,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  height: size.height * 0.5,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 35, vertical: 20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey[300]
                                                .withOpacity(.3),
                                            blurRadius: 15,
                                            offset: Offset(-4.0, -4.0),
                                            spreadRadius: 1),
                                        BoxShadow(
                                            color:
                                                Colors.black87.withOpacity(.2),
                                            blurRadius: 15,
                                            offset: Offset(4.0, 4.0),
                                            spreadRadius: 1)
                                      ]),
                                  child: Container(
                                    width: size.width * 0.8,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.lightBlueAccent),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image(
                                        image: AssetImage('images/sujoy.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Sujoy Dev",
                                  style: TextStyle(
                                    color: Color(0xff121212),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "AppleSF",
                                    fontSize: 25,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Mumbai" + " | " + "21",
                                  style: TextStyle(
                                    color: Color(0xff121212),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "AppleSF",
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Tu achi hai but, pehli wali better thi!",
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "AppleSF",
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.207,
                  // color: Colors.indigoAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(left: 55),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white.withOpacity(.8),
                                        blurRadius: 15,
                                        offset: Offset(-4.0, -4.0)),
                                    BoxShadow(
                                        color:
                                            Colors.grey[600].withOpacity(.15),
                                        blurRadius: 5,
                                        offset: Offset(4.0, 4.0))
                                  ]),
                              child: ShaderMask(
                                blendMode: BlendMode.srcIn,
                                shaderCallback: (Rect bounds) {
                                  return ui.Gradient.linear(
                                    Offset(24.0, 4.0),
                                    Offset(4.0, 24.0),
                                    [
                                      Colors.grey[500],
                                      Colors.grey[200],
                                    ],
                                  );
                                },
                                child: Icon(
                                  Icons.refresh,
                                  size: 20,
                                ),
                              )),
                          Container(
                              margin: EdgeInsets.only(left: 25),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white.withOpacity(.8),
                                        blurRadius: 15,
                                        offset: Offset(-4.0, -4.0)),
                                    BoxShadow(
                                        color:
                                            Colors.grey[600].withOpacity(.15),
                                        blurRadius: 5,
                                        offset: Offset(4.0, 4.0))
                                  ]),
                              child: ShaderMask(
                                blendMode: BlendMode.srcIn,
                                shaderCallback: (Rect bounds) {
                                  return ui.Gradient.linear(
                                    Offset(4.0, 24.0),
                                    Offset(24.0, 4.0),
                                    [
                                      Colors.redAccent,
                                      Colors.orangeAccent,
                                    ],
                                  );
                                },
                                child: Icon(
                                  Icons.close,
                                  size: 30,
                                ),
                              )),
                          Container(
                              margin: EdgeInsets.only(left: 25),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white.withOpacity(.8),
                                        blurRadius: 15,
                                        offset: Offset(-4.0, -4.0)),
                                    BoxShadow(
                                        color:
                                            Colors.grey[600].withOpacity(.15),
                                        blurRadius: 5,
                                        offset: Offset(4.0, 4.0))
                                  ]),
                              child: ShaderMask(
                                blendMode: BlendMode.srcIn,
                                shaderCallback: (Rect bounds) {
                                  return ui.Gradient.linear(
                                    Offset(4.0, 24.0),
                                    Offset(24.0, 4.0),
                                    [
                                      Colors.indigoAccent,
                                      Colors.lightBlueAccent,
                                    ],
                                  );
                                },
                                child: Icon(
                                  Icons.star,
                                  size: 30,
                                ),
                              )),
                          Container(
                              margin: EdgeInsets.only(left: 25),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white.withOpacity(.8),
                                        blurRadius: 15,
                                        offset: Offset(-4.0, -4.0)),
                                    BoxShadow(
                                        color:
                                            Colors.grey[600].withOpacity(.15),
                                        blurRadius: 5,
                                        offset: Offset(4.0, 4.0))
                                  ]),
                              child: ShaderMask(
                                blendMode: BlendMode.srcIn,
                                shaderCallback: (Rect bounds) {
                                  return ui.Gradient.linear(
                                    Offset(4.0, 24.0),
                                    Offset(24.0, 4.0),
                                    [
                                      Color(0xffa8ff78),
                                      Color(0xff78ffd6),
                                    ],
                                  );
                                },
                                child: Icon(
                                  Icons.favorite,
                                  size: 30,
                                ),
                              )),
                          Container(
                              margin: EdgeInsets.only(right: 40, left: 25),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white.withOpacity(.8),
                                        blurRadius: 15,
                                        offset: Offset(-4.0, -4.0)),
                                    BoxShadow(
                                        color:
                                            Colors.grey[600].withOpacity(.15),
                                        blurRadius: 5,
                                        offset: Offset(4.0, 4.0))
                                  ]),
                              child: ShaderMask(
                                blendMode: BlendMode.srcIn,
                                shaderCallback: (Rect bounds) {
                                  return ui.Gradient.linear(
                                    Offset(24.0, 4.0),
                                    Offset(4.0, 24.0),
                                    [
                                      Colors.yellow,
                                      Colors.orange,
                                    ],
                                  );
                                },
                                child: Icon(
                                  FontAwesomeIcons.handSparkles,
                                  size: 20,
                                ),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: size.width * 0.8,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [Color(0xffa8ff78), Color(0xff78ffd6)]),
                            borderRadius: BorderRadius.circular(10)),
                        child: CupertinoButton(
                            borderRadius: BorderRadius.circular(10),
                            onPressed: () {},
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Curse someone else.",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "AppleSF",
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  FontAwesomeIcons.solidPaperPlane,
                                  color: Colors.white,
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
