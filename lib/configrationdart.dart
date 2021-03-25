import 'package:flutter/material.dart';

Color  maincolor=Color(0xff416d6d);

List<BoxShadow> boxshadow=[
  BoxShadow(color:Colors.grey[300],blurRadius: 30,offset:Offset(0,10) )
];
List<Map> petsdata=[                  // i use list of map here to convert this data to used in widgets
  {'name':'Cats','iconPath':'images/cat.png'},
  {'name':'Dogs','iconPath':'images/dog.png'},
  {'name':'Horses','iconPath':'images/horse.png'},
  {'name':'Parrots','iconPath':'images/parrot.png'},
  {'name':'Rabbits','iconPath':'images/rabbit.png'}
];
List<Map> mainscreendata=[
  {'icon': Icons.soap_rounded,'title':'Adoption'},
  {'icon': Icons.medical_services_rounded,'title':'Donation'},
  {'icon': Icons.add_box_rounded,'title':'Add pet'},
  {'icon': Icons.favorite,'title':'Favourits'},
  {'icon': Icons.mail,'title':'Message'},
  {'icon': Icons.person,'title':'Profile'},

];