import 'package:flutter/material.dart';
import 'package:to_do_list_app/enums/categories.dart';


class CatElement {
 
  Category? cat;  
  Icon catIcon;
  Color? iColor;  
  Color bgColor;

  CatElement._internal({required this.catIcon, required this.bgColor, required Category this.cat});


  factory  CatElement({required Category category,required Color iconColor, Color backGroundColor = Colors.white}) {

    switch (category) {

      case Category.Friends:             
        return CatElement._internal(
          catIcon: Icon(Icons.emoji_people, color: iconColor, size: 30.0),
          bgColor: backGroundColor,
          cat: category
          );       

      case Category.Sports:
        return CatElement._internal(
          catIcon: Icon(Icons.emoji_events, color: iconColor, size: 30.0),
          bgColor: backGroundColor,
          cat: category
          );    
        

      case Category.Study:
        return CatElement._internal(
          catIcon: Icon(Icons.menu_book_outlined, color: iconColor, size: 30.0),
          bgColor: backGroundColor,
          cat: category
          );

      case Category.Work:
        return CatElement._internal(
          catIcon: Icon(Icons.work, color: iconColor, size: 30.0),
          bgColor: backGroundColor,
          cat: category
          );

      default:
        return CatElement._internal(
          catIcon: Icon(Icons.error_sharp, color: iconColor, size: 30.0),
          bgColor: backGroundColor,
          cat: category
          );
       
    } 
    
  }
  
}