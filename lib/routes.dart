import 'package:flutter/material.dart';
import 'package:quotes_appp/Radam_screen/HomePage.dart';
import 'package:quotes_appp/Radam_screen/Listview.dart';


class AppRoutes
{
  static Map<String, Widget Function(BuildContext)> routes =
  {
     '/':(context)=>ListViewScreen(),
    '/home': (context) => HomePageScren(),
  };
}