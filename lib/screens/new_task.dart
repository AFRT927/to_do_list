import 'package:flutter/material.dart';
import 'package:to_do_list_app/resources/categoryButton.dart';
import 'package:to_do_list_app/enums/categories.dart';
import 'package:to_do_list_app/resources/dateTimePicker.dart';

class NewTask extends StatefulWidget { 

  @override
  State<NewTask> createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {

    List<CatButton> catList = [
    CatButton(cat:Category.Friends, iconColor: Colors.red.shade200),
    CatButton(cat:Category.Study, iconColor: Colors.yellow.shade900),
    CatButton(cat:Category.Sports, iconColor: Colors.indigo.shade500),
    CatButton(cat:Category.Work, iconColor: Colors.green)
  ];

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(8, 8, 32, 0.849),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(8, 8, 32, 0.849),
           title: Center(
             child: Text(
                   'New Task',
                   style: TextStyle(
              color: Colors.indigo[200],
              fontSize: 32
                   ),
                  ),
           ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: ListView(          
            scrollDirection: Axis.vertical,
            children: <Widget> [
              SizedBox(
                height: 200,                
                child: TextField(                       
                  maxLines: null,
                  expands: true,  
                  keyboardType: TextInputType.multiline, 
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 22
                  ),      
                  onChanged: (s){
                    print(s);
                  },
                  decoration: InputDecoration(
                    hintText: 'Please Enter Task',
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 22
                    ),                    
                  ),                  
                ),
              ),
              SizedBox(
                height: 500,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                  SizedBox(
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget> [
                      Text(
                      'Choose Category',
                      style: TextStyle(
                        color: Colors.grey[50],
                        fontSize: 14
                      ),
                    ),
                    Expanded(                    
                      child: ListView.builder(
                        itemExtent: 110,
                        scrollDirection: Axis.horizontal,
                        itemCount: catList.length,
                        itemBuilder: (context, i) =>  catList[i].buildCard(),                      
                        ),
                    ),
                      ],
                    ),
                  ),

                  SizedBox(height: 70,),
                  Center(
                    child: SizedBox(
                      height: 100 ,
                      width: 300,
                      child: Row(
                        children: <Widget> [
                        Column(
                            
                            children: <Widget> [
                              Text(
                                'Set Due Date',
                                style: TextStyle(
                                  color: Colors.grey[200],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                                width: 10,
                              ),
                              DtPicker()
                            ],
                    
                        ),
                        Expanded(child: SizedBox(width: 50,)),
                        Column(
                            children: <Widget> [
                              Text(
                                'Set Reminder',
                                style: TextStyle(
                                  color: Colors.grey[200],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                                width: 10,
                              ),
                              DtPicker()
                            ],
                        )
                        ]
                      ),
                    ),
                  ),
                  SizedBox(height: 70,),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo.shade600
                          ),
                          onPressed: (){},
                           child: Text('ADD TASK')
                           ),
                      ),
                    ],
                  )
                   
                    ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}