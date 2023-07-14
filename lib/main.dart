import 'package:flutter/material.dart';
import 'package:to_do_list_app/screens/home.dart';
import 'package:to_do_list_app/screens/new_task.dart';
void main() =>  runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/newTask',
    routes: {
      //'/loading': ( context ) => Loading(),
      '/newTask': ( context ) => NewTask(),
      '/': ( context ) => Home()
    },
  )
);




