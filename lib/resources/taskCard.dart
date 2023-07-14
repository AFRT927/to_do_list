
import 'package:flutter/material.dart';
import 'package:to_do_list_app/enums/categories.dart';
import 'package:to_do_list_app/resources/categoryElement.dart';

class TaskCard extends StatefulWidget {
  //const TaskCard({super.key});

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {  
  
  TaskObj tO = TaskObj(
    title: 'this is a test task',
    catElement: CatElement(category: Category.Study, iconColor: Colors.yellow.shade800),
    hasAlarm: true,
    time: '5:00 PM',
    isSelected: false);

  Widget checkBox( bool isIt ) {    

    return isIt
     ? Icon(
         Icons.check_box_outlined,         
         color: Colors.indigo[700],
         size: 30.0,
      ) :
      Icon(
        Icons.crop_square_rounded,
        color: Colors.indigo[700],
        size: 30.0,    
      );
  }

  Widget alarm( bool isIt ){

    return isIt ?
     Icon(
      Icons.add_alert_outlined,
      color: Colors.grey,
     ) : 
    SizedBox(width: 10,);
  }

    


  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        print('task pressed');
      },
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.elliptical(10, 10))
        ),
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        color: Color.fromRGBO(17, 17, 49, 1),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  checkBox(tO.isSelected),
                  SizedBox(width: 30,),
                  Text(
                    tO.title,
                    style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 22
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget> [
                  Icon(
                     Icons.access_time,
                     color: Colors.grey[400],
                     ),
                  SizedBox(width: 4,),
                  Text(
                    '|',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 25
                    ),
                    ),
                  alarm(tO.hasAlarm),
                  Expanded(
                    child: SizedBox(height: 10,),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: tO.catElement.catIcon,
                    label: Text(
                      tO.catElement.cat.toString().substring(9),
                      style: TextStyle(
                        color: Colors.grey[400]
                      ),
                    )
                    ),                    
                ],
              )
            ],
          ),
          ),

      ),
    );
  }
}

class TaskObj {

  String title;
  CatElement catElement;  
  bool hasAlarm;
  String time;
  bool isSelected;

  TaskObj({required this.title, required this.catElement, required this.hasAlarm,required this.time, required this.isSelected});
  

}
