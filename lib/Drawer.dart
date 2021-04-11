import 'package:flutter/material.dart';
import 'adminlogin.dart';
import 'main.dart';


class SettingDrawer extends StatefulWidget {
  @override
  _SettingDrawerState createState() => _SettingDrawerState();
}

class _SettingDrawerState extends State<SettingDrawer> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
       // title: Text(Apptitle),
   //   ),

        drawer: Drawer(
        child: ListView(
        children: <Widget>[
        DrawerHeader(
        decoration: BoxDecoration(
        gradient: LinearGradient(colors: <Color>[
        Color(0xFF0091EA),
        Color(0xFFBBDEFB),
        Color(0xff64B5F6)
        ])
        ),
        child: Image.asset('images/sail.png',width: 80,height:60 )
        ),
        ListTile(
        title: Text('Profile', style: TextStyle(fontSize: 20),),
        ),
        ListTile(
        title: Text('Settings', style: TextStyle(fontSize: 20)),
        ),
        ListTile(
        title: Text('Log Out', style: TextStyle(fontSize: 20)),
        ),

        ],
        ) ,
        ),

    );


  }
}

