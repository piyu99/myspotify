import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:neumorphism/screens/glass.dart';

class BottomListTile extends StatefulWidget {
  @override
  _BottomListTileState createState() => _BottomListTileState();
}

class _BottomListTileState extends State<BottomListTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          ListView.builder(
            itemCount: 20,
            itemBuilder: (context,index){
              return ListTile(
                title: Text('Song no. ${index+1}',
                style: TextStyle(
                  color: Colors.white70

                ),),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: ListTile(
                tileColor: Colors.grey,
                title: Text('A LOVELY NIGHT '),
                subtitle: Text('LA LA LAND'),
                leading: Hero(
                  transitionOnUserGestures: true,
                  child: Container(child: Image.asset('assets/la.jpg')),
                  tag: 'hero',),
                onTap: (){
                  Get.to(GlassMorph());
                },
              ),
            ),
          )
          
        ],
      ),
    );
  }
}
