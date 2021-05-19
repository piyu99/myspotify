import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neumorphism/utils/constants.dart';


class Error{

  showerror(BuildContext context){
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context){
          return AlertDialog(
           backgroundColor: Colors.transparent,
            content: ClipRRect(
              borderRadius: BorderRadius.circular(26),
              child: BackdropFilter(
              filter: ImageFilter.blur(
                 sigmaY: 16,
                   sigmaX: 16,
                         ),
            child: Container(
              color: Colors.white.withOpacity(0.3),
              height: 100,
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Text('Rate Your Song !!',
                  style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 20,
                  ),
                  RatingBar.builder(
                    glowColor: Colors.deepPurple,
                    unratedColor: Colors.white,
                    initialRating: 1,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    //itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => FaIcon(
                      FontAwesomeIcons.solidHeart,
                      color: Colors.deepPurple,),

                    onRatingUpdate: (rating) {
                      print(rating);
                      Constants.ratings=true;
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
            ),
          );
        }
    );
  }
}