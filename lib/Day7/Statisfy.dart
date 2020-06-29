import 'package:flutter/material.dart';

class Statisfy extends StatefulWidget {
  final String username;
  final String imageURl;
  final String email;

  const Statisfy({Key key, this.username, this.imageURl, this.email})
      : super(key: key);

  @override
  _StatisfyState createState() => _StatisfyState();
}

class _StatisfyState extends State<Statisfy> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff2193b0), Color(0xff6dd5ed)])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                Text(
                  "Statisfy",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "AppleSF",
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
                Icon(
                  Icons.person,
                  color: Colors.white,
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: widget.imageURl == null
                              ? AssetImage('images/avatar.png')
                              : NetworkImage(widget.imageURl),
                          radius: 25,
                        ),
                        SizedBox(width: 20),
                        Text(
                          "Hello, " + widget.username + ".",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "AppleSF",
                              fontSize: 30,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    // Text(
                    //   "(" + widget.email + ")",
                    //   style: TextStyle(
                    //       color: Colors.white,
                    //       fontFamily: "AppleSF",
                    //       fontSize: 10,
                    //       fontWeight: FontWeight.w500),
                    // ),
                  ],
                ),
              ),
              Container(
                height: 120,
                margin: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                child: Text(
                  "“All our dreams can come true, if we have the courage to pursue them.” \n– Walt Disney.",
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Container(
                height: size.height * 0.45,
                width: size.width,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(20),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                  color: Color(0xff6dd5ed), width: 2)),
                          child: Icon(
                            Icons.person,
                            color: Color(0xff6dd5ed),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                            color: Color(0xff6dd5ed),
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "3 Tasks for Today",
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 20,
                                fontFamily: "AppleSF",
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Todo(
                            todoTitle: "Create an App for Day 7",
                            isCompleted: true,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Todo(todoTitle: "Study GRE", isCompleted: false),
                          SizedBox(
                            height: 20,
                          ),
                          Todo(todoTitle: "Play Games", isCompleted: false),
                          SizedBox(
                            height: 50,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Completed: 33.33%",
                              style: TextStyle(
                                  color: Color(0xff6dd5ed),
                                  fontFamily: "AppleSF",
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}

class Todo extends StatelessWidget {
  const Todo({
    Key key,
    this.todoTitle,
    this.isCompleted,
  }) : super(key: key);

  final String todoTitle;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        isCompleted
            ? Icon(
                Icons.done,
                color: Color(0xff6dd5ed),
                size: 20,
              )
            : Icon(
                Icons.fiber_manual_record,
                color: Color(0xff6dd5ed),
                size: 20,
              ),
        SizedBox(width: 20),
        Text(
          todoTitle,
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, fontFamily: "AppleSF"),
        )
      ],
    );
  }
}
