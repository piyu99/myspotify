import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class GlassMorph extends StatefulWidget {
  @override
  _GlassMorphState createState() => _GlassMorphState();
}

double play = 40;

class _GlassMorphState extends State<GlassMorph> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/la.jpg'), fit: BoxFit.fill)),
          child: SafeArea(
            child: Center(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 12,
                  sigmaY: 12,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'PLAYING FROM ALBUM',
                              style: TextStyle(fontSize: 12, color: Colors.white
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              'LA LA LAND',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 12,
                                  sigmaY: 12,
                                ),
                                child: Container(
                                  child: Hero(
                                    transitionOnUserGestures: true,
                                      child: Image.asset('assets/la.jpg'),
                                  tag: 'hero',),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(26),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaY: 16,
                                sigmaX: 16,
                              ),
                              child: Container(
                                color: Colors.white.withOpacity(0.3),
                                child: Column(
                                  children: [
                                    ListTile(
                                      title: Text('A Lovely Night',
                                        style: TextStyle(
                                            color: Colors.white
                                        ),),
                                      subtitle: Text('Ryan Gosling, Emma Stone'),
                                      trailing: Container(
                                        child: Padding(
                                          padding: const EdgeInsets.all(18.0),
                                          child: FaIcon(FontAwesomeIcons.heart),
                                        ),
                                      ),
                                    ),
                                    Slider(
                                      activeColor: Colors.deepPurple,
                                      inactiveColor: Colors.grey,
                                      min: 10,
                                      max: 100,
                                      value: play,
                                      onChanged: (double newvalue) {
                                        setState(() {
                                          play = newvalue;
                                        });
                                      },
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            //Get.changeThemeMode(Get.isDarkMode?ThemeMode.light:ThemeMode.dark);
                                          },
                                          child: Container(
                                            child: Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child:
                                                FaIcon(FontAwesomeIcons.lightbulb)),

                                          ),
                                        ),
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: FaIcon(FontAwesomeIcons.stepBackward),
                                          ),

                                        ),
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.pause,
                                              size: 40,
                                            ),
                                          ),

                                        ),
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: FaIcon(FontAwesomeIcons.stepForward),
                                          ),

                                        ),
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: FaIcon(FontAwesomeIcons.search),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
