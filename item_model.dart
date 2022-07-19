import 'package:flutter/material.dart';

class Item {
  var img=Image.asset("image/assets/apple.png");
  String tile = "title";
  double price = 50;
  bool isSelected=false;

  Item(
      {
        this.tile = '' ,
        required this.img
      }
      );
  factory Item.fromJson(Map<String,dynamic>data){
    return Item(
        tile: data['title'],
        img: Image.asset("")
    );

  }

}

