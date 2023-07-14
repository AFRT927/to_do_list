import 'package:flutter/material.dart';
import 'package:to_do_list_app/resources/categoryButton.dart';
import 'package:to_do_list_app/enums/categories.dart';
import 'package:to_do_list_app/resources/taskCard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  List<CatButton> catList = [
    CatButton(cat:Category.Friends, iconColor: Colors.red.shade200),
    CatButton(cat:Category.Study, iconColor: Colors.yellow.shade900),
    CatButton(cat:Category.Sports, iconColor: Colors.indigo.shade500),
    CatButton(cat:Category.Work, iconColor: Colors.green)
  ];


//catList.map((c) {return c.buildCard()}).toList()

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(8, 8, 32, 0.849),
        appBar: AppBar(
          title: Center(
            child: Text('to do list app'),
          ),
        ),
        body: Container(          
          
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,                
                          children: [              
                  TextButton(
                    onPressed: (){print('All');},
                     child: Center(
                      child: Text('ALL')
                      )
                     ),
                SizedBox(width: 30,),
                Expanded(
                  child: ListView.builder(
                            itemCount: catList.length,
                            itemBuilder: (context, i) => catList[i].buildCard(),
                            scrollDirection: Axis.horizontal,                        
                           ),
                )
                          ],
                        ),
              ),
          SizedBox(height: 50),
          TaskCard()
            ],
          )
        )
      )
    );
  }
}