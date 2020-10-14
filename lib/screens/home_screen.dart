import 'package:flutter/material.dart';
import 'package:todoapp/helpers/drawer_navigation.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TodoList Sqflite'),
      ),
      drawer: DrawerNavigation(),
    );
  }
}
