import 'package:flutter/material.dart';
import 'package:todoapp/screens/categories_screen.dart';
import 'package:todoapp/screens/home_screen.dart';

class DrawerNavigation extends StatefulWidget {
  @override
  _DrawerNavigationState createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.imgbin.com/16/20/6/imgbin-randy-orton-wwe-championship-cutter-randy-orton-UjWtcGEDCWEgv6i7Zz7jeU7av.jpg'),
              ),
              accountName: Text('Deepak Suresh Gurav'),
              accountEmail: Text('guravdeepak288@gmail.com'),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomeScreen())),
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CategoriesScreen())),
              leading: Icon(Icons.view_list),
              title: Text('Categories'),
            ),
          ],
        ),
      ),
    );
  }
}
