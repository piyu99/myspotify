import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:neumorphism/utils/themes.dart';

class Neuro extends StatefulWidget {
  @override
  _NeuroState createState() => _NeuroState();
}

double play = 40;

class _NeuroState extends State<Neuro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.changeThemeMode(Get.isDarkMode?ThemeMode.light:ThemeMode.dark);
        },
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'PLAYING FROM ALBUM',
                      style: TextStyle(
                        fontSize: 12,
                        //fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      'LA LA LAND',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(child: Image.asset('assets/la.jpg'),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      offset: Offset(30, 10),
                      blurRadius: 20,
                      //spreadRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.grey[500],
                      offset: Offset(-30, -10),
                      blurRadius: 20,
                      //spreadRadius: 1,
                    ),
                  ],

                ),),
              ),
              Expanded(
                child: ListTile(
                  title: Text('A Lovely Night'),
                  subtitle: Text('Ryan Gosling, Emma Stone'),
                  trailing: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: FaIcon(FontAwesomeIcons.heart),
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(6, 2),
                          blurRadius: 8,
                          //spreadRadius: 1,
                        ),
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(-6, -2),
                          blurRadius: 10,
                          //spreadRadius: 1,
                        ),
                      ],
                      shape: BoxShape.circle,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Slider(
                  activeColor: Colors.purpleAccent,
                  inactiveColor: Colors.grey,
                  min: 10,
                  max: 100,
                  value: play,
                  onChanged: (double newvalue) {
                    setState(() {
                      play=newvalue;
                    });
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8,right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Get.changeThemeMode(Get.isDarkMode?ThemeMode.light:ThemeMode.dark);
                        },
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: FaIcon(FontAwesomeIcons.lightbulb)
                          ),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(6, 2),
                                blurRadius: 8,
                                //spreadRadius: 1,
                              ),
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(-6, -2),
                                blurRadius: 10,
                                //spreadRadius: 1,
                              ),
                            ],
                            shape: BoxShape.circle,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: FaIcon(FontAwesomeIcons.stepBackward),
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(6, 2),
                              blurRadius: 8,
                              //spreadRadius: 1,
                            ),
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(-6, -2),
                              blurRadius: 10,
                              //spreadRadius: 1,
                            ),
                          ],
                          shape: BoxShape.circle,
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: FaIcon(FontAwesomeIcons.pause,
                          size: 40,),
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(6, 2),
                              blurRadius: 8,
                              //spreadRadius: 1,
                            ),
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(-6, -2),
                              blurRadius: 10,
                              //spreadRadius: 1,
                            ),
                          ],
                          shape: BoxShape.circle,
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: FaIcon(FontAwesomeIcons.stepForward),
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(6, 2),
                              blurRadius: 8,
                              //spreadRadius: 1,
                            ),
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(-6, -2),
                              blurRadius: 10,
                              //spreadRadius: 1,
                            ),
                          ],
                          shape: BoxShape.circle,
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                      InkWell(
                        onTap: (){

                            Get.changeThemeMode(Get.isDarkMode?ThemeMode.light:ThemeMode.dark);

                        },
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FaIcon(FontAwesomeIcons.search),
                          ),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(6, 2),
                                blurRadius: 8,
                                //spreadRadius: 1,
                              ),
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(-6, -2),
                                blurRadius: 10,
                                //spreadRadius: 1,
                              ),
                            ],
                            shape: BoxShape.circle,
                            color: Theme.of(context).scaffoldBackgroundColor,
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
      ),
    );
  }
}
