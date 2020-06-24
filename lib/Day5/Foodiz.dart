import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Foodiz extends StatefulWidget {
  @override
  _FoodizState createState() => _FoodizState();
}

class _FoodizState extends State<Foodiz> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Foodiz",
          style: TextStyle(
              color: Colors.orangeAccent,
              fontFamily: "AppleSF",
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        leading: Icon(
          Icons.menu,
          color: Colors.orangeAccent,
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(Icons.search, color: Colors.orangeAccent),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: size.height * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    FoodCarousel(
                      size: size,
                      image: 'images/1.jpg',
                      foodTitle: "Tandoori Chicken",
                      rating: 4.5,
                    ),
                    FoodCarousel(
                      size: size,
                      image: 'images/2.jpg',
                      foodTitle: "Kebabs",
                      rating: 4.8,
                    ),
                    FoodCarousel(
                      size: size,
                      image: 'images/3.jpeg',
                      foodTitle: "Burrito",
                      rating: 4.0,
                    ),
                    FoodCarousel(
                      size: size,
                      image: 'images/4.jpg',
                      foodTitle: "Dosa",
                      rating: 4.2,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  "Speciality",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "AppleSF",
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    SpecialityCarousel(
                      image: 'images/fried.jpg',
                      title: 'Fried Rice',
                    ),
                    SpecialityCarousel(
                      image: 'images/noodles.jpg',
                      title: 'Noodles',
                    ),
                    SpecialityCarousel(
                      image: 'images/pav.jpg',
                      title: 'Pav Bhaji',
                    ),
                    SpecialityCarousel(
                      image: 'images/misal.jpg',
                      title: 'Misal Pav',
                    ),
                    SpecialityCarousel(
                      image: 'images/sandwitch.jpg',
                      title: 'Sandwitch',
                    ),
                    SpecialityCarousel(
                      image: 'images/medu.jpg',
                      title: 'Medu Wada',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Categories",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "AppleSF",
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "AppleSF",
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    SpecialityCarousel(
                      image: 'images/misal.jpg',
                      title: 'Misal Pav',
                    ),
                    SpecialityCarousel(
                      image: 'images/sandwitch.jpg',
                      title: 'Sandwitch',
                    ),
                    SpecialityCarousel(
                      image: 'images/medu.jpg',
                      title: 'Medu Wada',
                    ),
                    SpecialityCarousel(
                      image: 'images/fried.jpg',
                      title: 'Fried Rice',
                    ),
                    SpecialityCarousel(
                      image: 'images/noodles.jpg',
                      title: 'Noodles',
                    ),
                    SpecialityCarousel(
                      image: 'images/pav.jpg',
                      title: 'Pav Bhaji',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text("Not sure what to Eat?",
                    style: TextStyle(
                        fontFamily: "AppleSF",
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25)),
              ),
              SizedBox(
                height: 10,
              ),
              FoodContainer(
                  key: UniqueKey(),
                  image: "images/fried.jpg",
                  foodName: 'Fried Rice',
                  rating: 4.6,
                  cost: 45),
              FoodContainer(
                  key: UniqueKey(),
                  image: "images/noodles.jpg",
                  foodName: 'Noodles',
                  rating: 4.2,
                  cost: 50),
              FoodContainer(
                  key: UniqueKey(),
                  image: "images/sandwitch.jpg",
                  foodName: 'Sandwitch',
                  rating: 3.8,
                  cost: 35),
              FoodContainer(
                  key: UniqueKey(),
                  image: "images/misal.jpg",
                  foodName: 'Misal Pav',
                  rating: 4.8,
                  cost: 40),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: index,
        onTap: (i) {
          setState(() {
            index = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(
                "Home",
                style: TextStyle(
                    fontFamily: "AppleSF", color: Colors.orangeAccent),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.restaurant_menu),
              title: Text(
                "Categories",
                style: TextStyle(
                    fontFamily: "AppleSF", color: Colors.orangeAccent),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text(
                "Favorite",
                style: TextStyle(
                    fontFamily: "AppleSF", color: Colors.orangeAccent),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text(
                "Cart",
                style: TextStyle(
                    fontFamily: "AppleSF", color: Colors.orangeAccent),
              ))
        ],
      ),
    );
  }
}

class FoodContainer extends StatelessWidget {
  const FoodContainer(
      {Key key, this.foodName, this.image, this.rating, this.cost})
      : super(key: key);

  final String foodName;
  final String image;
  final double rating;
  final int cost;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      margin: EdgeInsets.only(left: 25, top: 10, bottom: 20, right: 25),
      height: 100,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 100,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.cover)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                foodName,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "AppleSF",
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    rating.toString(),
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "AppleSF",
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.black,
                    size: 15,
                  )
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.orangeAccent),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  "Rs " + cost.toString(),
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "AppleSF",
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.add_shopping_cart,
                  color: Colors.white,
                  size: 15,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SpecialityCarousel extends StatelessWidget {
  const SpecialityCarousel({
    Key key,
    this.title,
    this.image,
  }) : super(key: key);

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 25, top: 10, bottom: 20),
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(.7),
                      Colors.black.withOpacity(.1)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: [.3, .7])),
          ),
        ),
        Positioned(
          left: 35,
          bottom: 30,
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontFamily: "AppleSF",
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        )
      ],
    );
  }
}

class FoodCarousel extends StatelessWidget {
  const FoodCarousel({
    Key key,
    @required this.size,
    this.foodTitle,
    this.rating,
    this.image,
  }) : super(key: key);

  final Size size;
  final String foodTitle;
  final double rating;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          width: size.width * 0.9,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[400].withOpacity(.3),
                    blurRadius: 15,
                    offset: Offset(-4, -4)),
                BoxShadow(
                    color: Colors.grey[600].withOpacity(.3),
                    blurRadius: 15,
                    offset: Offset(4, 4))
              ]),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(.7),
                      Colors.black.withOpacity(.1)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: [.3, .7])),
          ),
        ),
        Positioned(
          bottom: 40,
          left: 40,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                foodTitle,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "AppleSF",
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.white,
                size: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Text(rating.toString(),
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "AppleSF",
                      fontWeight: FontWeight.bold,
                      fontSize: 20))
            ],
          ),
        )
      ],
    );
  }
}
