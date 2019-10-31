import 'dart:ui';

import 'package:flutter/material.dart';

// https://dribbble.com/shots/7880192-HALLOWEEN-COSTUMES/attachments/487212?mode=media

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _backgroundImage = "assets/joker_full.jpg";
  String _image= "assets/joker.png";

  String title = "Halloween";
  
  Color _color = Color.fromRGBO(157, 227, 1, 1);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: ClipPath(
              child: Container(
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage(_backgroundImage), fit: BoxFit.fill)),
                child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Container(
                  color: Colors.black12.withOpacity(0.2),
                ),),
              ),
            ),
          ),

          // appbar
          Positioned(
            top: 0,
            left: 16.0,
            right: 16.0,
            child: SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                height: 32.0,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.close, size: 28.0, color: Colors.white,),
                    Spacer(),
                    Text(title, style: TextStyle(color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.bold),),
                    Spacer(),
                    Icon(Icons.search, size: 28.0, color: Colors.white,),
                    SizedBox(width: 4.0,),
                    Icon(Icons.sort, size: 28.0, color: Colors.white,),
                  ],
                ),
              ),
            ),
          ),

          // center joker image
          Positioned(
            top: 0,
            left: screenWidth * 0.30,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(_image), fit: BoxFit.cover)),
            ),
          ),

          // left icon
          Positioned(
            top: screenHeight * 0.30,
            left: -1.0,
            child: Container(
              height: 48.0,
              width: 80.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(32.0), bottomRight: Radius.circular(32.0)),
                border: Border.all(color: Colors.white, width: 1.0),
              ),
              child: Icon(Icons.arrow_back, size: 28.0, color: Colors.white,),
//              child: Placeholder(),
            ),
          ),

          // right icon
          Positioned(
            top: screenHeight * 0.30,
            right: -1.0,
            child: Container(
              height: 48.0,
              width: 80.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(32.0), bottomLeft: Radius.circular(32.0)),
                border: Border.all(color: Colors.white, width: 1.0),
              ),
              child: Icon(Icons.arrow_forward, size: 28.0, color: Colors.white,),
//              child: Placeholder(),
            ),
          ),

          // Column
          Positioned(
            top:  screenHeight* 0.55,
            left: 16.0,
            right: 16.0,
            bottom: 16.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Joker", style: TextStyle(color: Colors.white, fontSize: 52.0, fontWeight: FontWeight.bold),),
                Text("Joker Grand Heritage Costume", style: TextStyle(color: Colors.grey, fontSize: 16.0, fontWeight: FontWeight.w400),),
                Container(
                  margin: EdgeInsets.only(top: 16.0),
                  alignment: Alignment.center,
                  height: 180.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 40.0,
                        width: 120.0,
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(
                            side: BorderSide(color: Colors.white, width: 1.0),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(Icons.add, size: 28.0, color: _color,),
                            Text("1", style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w400),),
                            Icon(Icons.remove, size: 28.0, color: Colors.white,),
                          ],
                        ),
                      ),

                      Text("\$ 70.99", style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.file_download, size: 28.0, color: Colors.white,),
                          SizedBox(width: 24.0,),
                          Container(
                            height: 48.0,
                            width: 48.0,
                            decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                            child: Center(child: Icon(Icons.shopping_cart, color: Colors.black,)),
                          ),
                          SizedBox(width: 24.0,),
                          Icon(Icons.favorite, size: 28.0, color: _color,),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

























