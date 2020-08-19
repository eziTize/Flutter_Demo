import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'signin.dart';

class carousel extends StatefulWidget {
  @override
  _carouselState createState() => _carouselState();
}

class _carouselState extends State<carousel> {
  @override
  Widget build(BuildContext context) {

    Widget image_Carousel = new Container(
      height: 558.0,
      child: new Carousel(
        boxFit: BoxFit.cover,     //images will fit the container/carousel
        images: [   //square brackets used for lists
          AssetImage('assets/1.jpg'),
          AssetImage('assets/2.jpg'),
          AssetImage('assets/3.jpg'),
        ],
        autoplay: true,  //specify the movement of the images
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(microseconds: 2000),
        dotSize: 0.0, // sizes of the dots in a carousel
        indicatorBgPadding: 0.0, //a black container which shows the dots
        dotBgColor: Colors.transparent, //specifying the color of the bar in carousel
      ),
    );

    return Scaffold(

      body: ListView(

        children: <Widget>[
//image carousel body
          image_Carousel,
//padding widget
        new Padding(padding: const EdgeInsets.all(8.0),),
        ],
      ),

      bottomNavigationBar: new BottomAppBar(
        color: Colors.redAccent,

        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: FlatButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => signin()),
                );
              },
              icon: Icon(Icons.keyboard_arrow_right, color: Colors.white,),
              label: Text("Continue with Google", style: TextStyle(color: Colors.white),)
          ),

        ),

      ),

    );

  }
}