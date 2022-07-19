import 'package:flutter/material.dart';

import 'item_model.dart';

class DataProvider extends ChangeNotifier{
  List<Item> items = [
    Item(img: Image.asset("image/assets/apple.png"), tile: 'Green apple'),
    Item(img: Image.asset("image/assets/binapple.png"), tile: 'binapple'),
    Item(img: Image.asset("image/assets/banana.png"), tile: 'banana'),
    Item(img: Image.asset("image/assets/coconut.png"), tile: 'coconut'),
    Item(img: Image.asset("image/assets/mango.png"), tile: 'mango'),
    Item(img: Image.asset("image/assets/orange.png"), tile: 'orange'),
    Item(img: Image.asset("image/assets/strawberry.png"), tile: 'strawberry'),
    Item(img: Image.asset("image/assets/watermelon.png"), tile: 'watermelon'),

  ];
  List<Item>selectedItems=[];
  double totalPrice=0;

  void addIem(int index){
    selectedItems.add(items[index]);
    items[index].isSelected=true;
    totalPrice+=items[index].price;
    print("selected items ${selectedItems.length}");
    notifyListeners();
  }


}