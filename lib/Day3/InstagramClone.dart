import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstagramClone extends StatefulWidget {
  @override
  _InstagramCloneState createState() => _InstagramCloneState();
}

class _InstagramCloneState extends State<InstagramClone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          centerTitle: true,
          elevation: 2,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt,
              color: Colors.black,
            ),
          ),
          actions: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 250.0),
                  child: Image.asset(
                    'images/instagram-logo.png',
                    height: 35,
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.send,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: 100,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        // shrinkWrap: true,
                        children: <Widget>[
                          Story(userImage: 'images/matmaan.jpg',username: 'Your Story',),
                          Story(userImage: 'images/hindustaniBhau.jpg',username: 'Hindustani Bhau',),
                          Story(userImage: 'images/pankaj.jpg',username: 'Pankaj Tripathi',),
                          Story(userImage: 'images/abe.jpg',username: 'Abe Sale',),
                        ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Post(
                    userImage: 'images/netflix.png',
                    username: 'netflix_in',
                  ),
                  // Post(
                  //   userImage: 'images/matmaan.jpg',
                  //   username: 'tejasraibagi',
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        backgroundColor: Colors.white,
        elevation: 6,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
              size: 30,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              ),
              title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box,
                color: Colors.black,
                size: 30,
              ),
              title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.black,
                size: 30,
              ),
              title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: Colors.black,
                size: 30,
              ),
              title: Text("")),
        ],
      ),
    );
  }
}

class Story extends StatelessWidget {

  final String username;
  final String userImage;
  
  const Story({
    Key key, this.username, this.userImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              border: Border.all(
                  color: Color(0xff833ab4), width: 2)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(80),
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(userImage),
              width: 80,
              height: 80,
            ),
          ),
        ),
        Text(username, style: TextStyle(fontFamily: "OpenSans",fontSize: 12,fontWeight: FontWeight.w400))
      ],
    );
  }
}

class Post extends StatelessWidget {
  final String username;
  final String userImage;

  const Post({
    Key key,
    this.username,
    this.userImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 60,
            decoration:
                BoxDecoration(border: Border.all(color: Colors.grey[100])),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(userImage),
                    backgroundColor: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  username,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "OpenSans",
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            height: 500,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/moneyheist.jpg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 40,
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.comment),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 250),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.bookmark_border,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              "3128 likes",
              style: TextStyle(
                  fontFamily: "OpenSans", fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  "netflix_in  ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      fontFamily: "OpenSans"),
                ),
              ),
              Text(
                "Money Heist Season 4 out soon!",
                style: TextStyle(fontSize: 15, fontFamily: "OpenSans"),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              "View all 1028 comments",
              style: TextStyle(fontFamily: "OpenSans", color: Colors.grey[500]),
            ),
          ),
        ],
      ),
    );
  }
}
