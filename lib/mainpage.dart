import 'package:flutter/material.dart';
import 'package:petsapp/configrationdart.dart';
import 'package:petsapp/homescreen.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: maincolor,
      padding: EdgeInsets.only(bottom: 15,left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           Container(
             padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
             margin: EdgeInsets.symmetric(horizontal: 15),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Container(
                   height: 50,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(50),
                     ),
                   child: CircleAvatar(
                     child: Image(
                      image: AssetImage('images/eslam.png'),

                     ),
                   ),
                 ),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: <Widget>[
                      Text('Eslam AbouALmaatty',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                     Text('Active Status',
                       style: TextStyle(
                         fontSize: 14,
                         color: Colors.grey,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                   ],
                 )
               ],
             ),
           ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: 10),

              child: Column(
                children: mainscreendata.map((ele) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                     children: <Widget>[
                       GestureDetector(
                         onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                         },
                           child: Icon(ele['icon'],color: Colors.white,size: 20,)),
                       SizedBox(width: 10,),
                       Text(ele['title'],style: TextStyle(
                         fontSize: 18,
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                       ),)
                     ],
                  ),
                ),).toList(),
              ),

          ),
          Container(
            child: Row(
              children: [
                Icon(Icons.settings,size: 30,color: Colors.white,),
                SizedBox(width: 10,),
                Text('Setting',style: TextStyle(
                  fontSize: 20,
                  color:Colors.white,
                ),),
                SizedBox(width: 10,),
                Container(
                  height: 10,
                  width: 2,
                  color: Colors.white,
                ),
                SizedBox(width: 10,),
                Text('Log Out',style: TextStyle(
                  fontSize: 20,
                  color:Colors.white,
                ),)
              ],
            ),
          ),


        ],
      ),
    );
  }
}
