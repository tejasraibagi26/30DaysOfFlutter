import 'package:Days30/Day6/Listview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SteamLibrary extends StatefulWidget {
  @override
  _SteamLibraryState createState() => _SteamLibraryState();
}

class _SteamLibraryState extends State<SteamLibrary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
          "Games",
          style: TextStyle(
              fontFamily: "AppleSF", color: Colors.black, fontSize: 25),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.refresh, color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                height: 50,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage("images/moneyheist.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Shiv Alex Monty",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: "AppleSF",
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: gameList.length,
                  itemBuilder: (context,int index) => Card(imageURL: gameList[index]["imageURL"],gameTitle: gameList[index]["title"],inGameHrs: gameList[index]["hrs"],)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    Key key, this.imageURL, this.gameTitle, this.inGameHrs,
  }) : super(key: key);

  final String imageURL;
  final String gameTitle;
  final String inGameHrs;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: Offset(-2.0,-2.0),
            blurRadius: 15,
            spreadRadius: 1
          ),
          BoxShadow(
            color: Colors.grey[400].withOpacity(.4),
            offset: Offset(2.0,2.0),
            blurRadius: 10,
            spreadRadius: 1
          )
        ]
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
              image: DecorationImage(
                image: AssetImage(imageURL),
                fit: BoxFit.cover
              )
            ),
          ),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(gameTitle,
              style: TextStyle(
                color: Colors.black,
                fontFamily: "AppleSF",
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),
              ),
              Text( inGameHrs +" hours in-game",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "AppleSF",
                fontWeight: FontWeight.w500,
                fontSize: 15
              ),
              ),
              SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CupertinoButton(onPressed: () {  },
                  borderRadius: BorderRadius.circular(8),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  color: Colors.blue,
                  child: Text("Reviews"),
                  ),
                  SizedBox(width: 10,),
                  CupertinoButton(onPressed: () {  },
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  color: Colors.blue,
                  child: Text("Achievements"),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
