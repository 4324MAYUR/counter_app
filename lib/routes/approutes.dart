import 'package:counter_app/views/home/screen/home_screen.dart';
import 'package:flutter/cupertino.dart';

class AllRoutes{
  static String homepage ="/";

  static Map<String,Widget Function(BuildContext)> routes = {

    homepage: (context) => const HomePage(),
};
}