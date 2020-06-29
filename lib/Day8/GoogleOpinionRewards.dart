import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GoogleOpinionRewards extends StatefulWidget {
  @override
  _GoogleOpinionRewardsState createState() => _GoogleOpinionRewardsState();
}

class _GoogleOpinionRewardsState extends State<GoogleOpinionRewards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: RichText(
          text: TextSpan(children: <TextSpan>[
            TextSpan(
                text: "G", style: TextStyle(color: Colors.blue, fontSize: 20)),
            TextSpan(
                text: "o", style: TextStyle(color: Colors.red, fontSize: 20)),
            TextSpan(
                text: "o",
                style: TextStyle(color: Colors.orange, fontSize: 20)),
            TextSpan(
                text: "g", style: TextStyle(color: Colors.blue, fontSize: 20)),
            TextSpan(
                text: "l", style: TextStyle(color: Colors.green, fontSize: 20)),
            TextSpan(
                text: "e", style: TextStyle(color: Colors.red, fontSize: 20)),
            TextSpan(
                text: " ", style: TextStyle(color: Colors.red, fontSize: 20)),
            TextSpan(
                text: "Opinion Rewards",
                style: TextStyle(color: Colors.black54, fontSize: 20))
          ]),
        ),
        leading: Icon(
          Icons.menu,
          color: Colors.black54,
          size: 25,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "GOOGLE PLAY BALANCE",
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "₹135",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.circular(30)),
                  child: CupertinoButton(
                    borderRadius: BorderRadius.circular(30),
                    onPressed: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.googlePlay,
                          size: 15,
                        ),
                        Text("Play Store",
                            style: TextStyle(color: Colors.black54))
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Expiring:₹10.51 on 24 Dec",
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "MY TASKS",
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: 75,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 1)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "No survey at this time",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "We'll notify you when a new survey is available",
                    style: TextStyle(color: Colors.black54),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
