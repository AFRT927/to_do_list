import 'package:flutter/material.dart';
import 'package:to_do_list_app/enums/categories.dart';
import 'package:to_do_list_app/resources/categoryElement.dart';


class CatButton {
 
  Category cat;
  //Icon? catIcon;
  Color iconColor;  

  CatButton({required this.cat, required this.iconColor});


  Widget buildCard( ) {

   CatElement cE = CatElement(category: cat, iconColor: iconColor);  

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextButton.icon(
        onPressed: () {print('pressed ${cE.cat}');}, 
        style: ButtonStyle(
          alignment: Alignment.centerLeft,
          padding: MaterialStateProperty.all(EdgeInsets.zero)
        ),       
         icon: cE.catIcon,
          label: Text(            
            cE.cat.toString().substring(9),                        
            style: TextStyle(
              color: Colors.grey[400],             
            ),            
            )
          )
    );
  }

  
}