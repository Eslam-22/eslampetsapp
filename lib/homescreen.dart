import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petsapp/configrationdart.dart';
import 'package:petsapp/detailedscreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(isDrawerOpen?40:0.0),
        )
        ,
      ),
      
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    isDrawerOpen
                        ? IconButton(
                            icon: Icon(Icons.arrow_back_ios),
                            onPressed: () {
                              setState(() {
                                xOffset = 0;
                                yOffset = 0;
                                scaleFactor = 1;
                                isDrawerOpen = false;
                              });
                            },
                          )
                        : IconButton(
                            icon: Icon(Icons.menu),
                            onPressed: () {
                              setState(() {
                                xOffset = 230;
                                yOffset = 150;
                                scaleFactor = 0.6;
                                isDrawerOpen = true;
                              });
                            }),
                    Column(
                      children: <Widget>[
                        Text("Location"),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: maincolor,
                            ),
                            Text('Egypt'),
                          ],
                        ),
                      ],
                    ),
                    CircleAvatar()
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  Text('search for your pets'),
                  Icon(Icons.settings_outlined, color: Colors.grey),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: petsdata.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: boxshadow,
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            petsdata[index]['iconPath'],
                            height: 30,
                            width: 40,
                            color: Colors.grey[700],
                          ),
                        ),
                        Text(petsdata[index]['name'])
                      ],
                    ),
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailedScreen()));
              },
              child: Container(
                height: 200,
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[300],
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: boxshadow,
                            ),
                            margin: EdgeInsets.only(top: 30),
                          ),
                          Align(
                            child: Image(
                              image: AssetImage('images/pet-cat1.png'),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 40, bottom: 20),
                        decoration: BoxDecoration(
                            boxShadow: boxshadow,
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Smsm',
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.black),
                                  ),
                                  Icon(
                                    Icons.attractions,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left :10),
                                child: Text("Mishoo",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black
                                ),
                                )),
                            Container(
                                padding: EdgeInsets.only(left :10),
                                child: Text("2  year ",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black
                                  ),  )),
                            Container(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: maincolor,
                                  ),
                                  Text("Distance:8.5KM"
                                  ,
                                  style:TextStyle(
                                    fontSize: 14,
                                  ),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailedScreen()));
              },
              child: Container(
                height: 200,
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.deepOrangeAccent[100],
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: boxshadow,
                            ),
                            margin: EdgeInsets.only(top: 30),
                          ),
                          Align(
                            child: Image(
                              image: AssetImage('images/pet-cat2.png'),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 40, bottom: 20),
                          decoration: BoxDecoration(
                              boxShadow: boxshadow,
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'Sola',
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.black),
                                    ),
                                    Icon(
                                      Icons.attractions,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.only(left :10),
                                  child: Text("Mishoo",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black
                                    ),
                                  )),
                              Container(
                                  padding: EdgeInsets.only(left :10),
                                  child: Text("1 year ",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black
                                    ),  )),
                              Container(
                                padding: EdgeInsets.only(bottom: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: maincolor,
                                    ),
                                    Text("Distance:3.5KM"
                                      ,
                                      style:TextStyle(
                                        fontSize: 14,
                                      ),)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
