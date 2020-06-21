import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NetflixHomepage extends StatefulWidget {
  @override
  _NetflixHomepageState createState() => _NetflixHomepageState();
}

class _NetflixHomepageState extends State<NetflixHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.65,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/moneyheist.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          stops: [
                        0.14,
                        0.8
                      ],
                          colors: [
                        Colors.black,
                        Colors.black.withOpacity(.3)
                      ])),
                  child: Stack(
                    children: <Widget>[
                      Container(),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0, left: 15),
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              "images/netflix.png",
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              "TV Shows",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "OpenSans",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              "Movies",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "OpenSans",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              "My List",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "OpenSans",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                "images/netflix.png",
                                height: 28,
                                width: 28,
                              ),
                              Text(
                                "SERIES",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 3),
                              )
                            ],
                          ),
                          Stack(
                            children: <Widget>[
                              Text(
                                "MONEY",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "MoneyHeist",
                                    fontSize: 40),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30.0, left: 15),
                                child: Text(
                                  "HEIST",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "MoneyHeist",
                                      fontSize: 40),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "#8 in India Today",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "OpenSans",
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    "My List",
                                    style: TextStyle(
                                        color: Colors.grey[300],
                                        fontFamily: "OpenSans",
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                height: 35,
                                child: CupertinoButton(
                                  borderRadius: BorderRadius.circular(4),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 10),
                                  color: Colors.white,
                                  onPressed: () {},
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.play_arrow,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Play",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "OpenSans",
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(
                                      Icons.info_outline,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    "Info",
                                    style: TextStyle(
                                        color: Colors.grey[300],
                                        fontFamily: "OpenSans",
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0,left: 20,bottom: 10),
                      child: Text(
                        "Previews",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 15 ,right: 15),
                            child: Stack(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('images/moneyheist.jpg'),
                                  radius: 60,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter,
                                            stops: [
                                          0.1,
                                          0.8
                                        ],
                                            colors: [
                                          Colors.black.withOpacity(.8),
                                          Colors.black.withOpacity(.3)
                                        ])),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 70.0, left: 20.0),
                                  child: Text(
                                    "MONEY\n HEIST",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "MoneyHeist",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 15),
                            child: Stack(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('images/friends.jpeg'),
                                  radius: 60,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter,
                                            stops: [
                                          0.1,
                                          0.8
                                        ],
                                            colors: [
                                          Colors.black.withOpacity(.8),
                                          Colors.black.withOpacity(.3)
                                        ])),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 50.0, left: 15),
                                  child: Image.asset('images/friends-logo.png',
                                      width: 100,
                                      height: 100,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 15),
                            child: Stack(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundImage: AssetImage('images/res.jpg'),
                                  radius: 60,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter,
                                            stops: [
                                          0.1,
                                          0.8
                                        ],
                                            colors: [
                                          Colors.black.withOpacity(.8),
                                          Colors.black.withOpacity(.3)
                                        ])),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 50.0, left: 15),
                                  child: Image.asset('images/res-logo.png',
                                      width: 100, height: 100),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Stack(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('images/dark.png'),
                                  radius: 60,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter,
                                            stops: [
                                          0.1,
                                          0.8
                                        ],
                                            colors: [
                                          Colors.black.withOpacity(.8),
                                          Colors.black.withOpacity(.3)
                                        ])),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 60.0, left: 15),
                                  child: Image.asset(
                                    'images/dark-logo.png',
                                    width: 100,
                                    height: 100,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0,left: 20,bottom: 10),
                      child: Text(
                        "TV Comedies",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,   
                        children: <Widget>[
                          SizedBox(width: 15,),
                          Image.asset('images/friends.jpeg'),
                          SizedBox(width: 15,),
                          Image.asset('images/dark.png'),
                          SizedBox(width: 15,),
                          Image.asset('images/res.jpg'),
                          SizedBox(width: 15,),
                          Image.asset('images/moneyhiest.jpg'),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.cast,color: Colors.white),
          backgroundColor: Color(0xff121212)
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xff121212),
          selectedItemColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(
                      fontFamily: "OpenSans",
                      color: Colors.white,
                      fontSize: 10),
                )),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              title: Text("Search",
                  style: TextStyle(
                      fontFamily: "OpenSans",
                      color: Colors.grey,
                      fontSize: 10)),
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.video_library,
                  color: Colors.grey,
                ),
                title: Text("Coming Soon",
                    style: TextStyle(
                        fontFamily: "OpenSans",
                        color: Colors.grey,
                        fontSize: 10))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.file_download,
                  color: Colors.grey,
                ),
                title: Text("Downloads",
                    style: TextStyle(
                        fontFamily: "OpenSans",
                        color: Colors.grey,
                        fontSize: 10))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                  color: Colors.grey,
                ),
                title: Text("More",
                    style: TextStyle(
                        fontFamily: "OpenSans",
                        color: Colors.grey,
                        fontSize: 10)))
          ],
          currentIndex: 1,
        ));
  }
}
