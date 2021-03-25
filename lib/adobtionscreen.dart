
import 'package:flutter/material.dart';

class AdobtionScreen extends StatefulWidget {
  @override
  _AdobtionScreenState createState() => _AdobtionScreenState();
}

class _AdobtionScreenState extends State<AdobtionScreen> {
  @override

  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.all(25),
            child: Center(
              child: Text('Your choise is',style: TextStyle(
                fontSize: 17,
                color: Colors.black
              ),),
            ),

          ),Text('CAT SOLO',style: TextStyle(
              fontSize: 17,
              color: Colors.black
          ),),
          Image(image: AssetImage('images/pet-cat1.png')),

          Text( 'payment by',style: TextStyle(
              fontSize: 17,
              color: Colors.black
          ),),
           //
           // ToggleButtons(children: <Widget>[
           //   Text('Cash'),
           //   Text('online'),
           // ],
           //   onPressed: (int x){
           //   setState(() {
           //
           //   });
           //   },
           //
           // ),
        ],
      ),
    );
  }
}
