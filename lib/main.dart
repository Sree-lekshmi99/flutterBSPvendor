import 'package:flutter/material.dart';
import 'VendorTrasportArea.dart';
import './UI/login.dart';
import 'adminlogin.dart';
import './UI/ForgotPassword.dart';
import 'dart:convert';
import 'package:http/http.dart';

void main()
{
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AUTHORISED REPRESENTATIVE',
      home: HomeScreen()
  ));
}


class HomeScreen extends StatefulWidget {
  @override

  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isHiddenPassword = true;
  String hintText;
  Icon fieldIcon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('AUTHORISED REPRESENTATIVE APP'),
        backgroundColor: Color(0x44FF061B47),
      ),
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Center(
          child: Container(
            width: 400,
            height: 570,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                Image.asset('images/sail.png',width: 150,height: 150),

                Container(
                    width: 350,

                    child:Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.all(Radius.circular( 15.0)),
                        color: Colors.white,
                        child: Row(
                          children: [
                            Container(

                              width: 340,

                              child: TextField(

                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: 'Authorised Representative ID',
                                  hintStyle: TextStyle(fontSize: 20),
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.person_outline_outlined, color: Colors.black87,),


                                ),
                              ),


                            ),
                          ],
                        )
                    )
                ),




                Container(
                    width: 350,

                    child:Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.all(Radius.circular( 15.0)),
                        color: Colors.white,
                        child: Row(
                          children: [
                            Container(

                              width: 340,


                              child: TextField(

                                obscureText: isHiddenPassword,
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    hintText: 'Password',
                                    hintStyle: TextStyle(fontSize: 20),
                                    border: InputBorder.none,
                                    prefixIcon: Icon(Icons.lock_outline, color: Colors.black87,),
                                    suffixIcon: InkWell(
                                        onTap: _togglePasswordView,
                                        child: Icon(
                                            Icons.visibility
                                        )
                                    )

                                ),
                              ),


                            ),
                          ],
                        )
                    )
                ),

                Container(
                  width: 250,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xffFF0A0C57),
                        onPrimary: Colors.white),

                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>VendorTransportArea()));

                    },
                    child: Text('LOGIN',style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white
                    ),),

                  ),
                ),
                Container(
                  width: 310,
                  height: 31,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff09227b),
                        onPrimary: Colors.white),

                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>VendorTransportArea()));

                    },
                    child: Text('First Time User? Register HERE',style: TextStyle(
                        fontSize: 19.0,
                        color: Colors.white60
                    ),),

                  ),
                ),

                Container(
                  width: 200,
                  height: 40,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.blueAccent,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));
                    },
                    child: Text('Forgot Password?',style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black87

                    ),
                    ),
                  ),
                ),


                Container(

                  width: 200,
                  height: 40,

                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white,

                    ),

                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>adminlogin()));
                    },
                    child: Text('ADMIN LOGIN',style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.black87


                    ),
                    ),
                  ),

                )

              ],
            ),
          ),
        ),
      ),
    );
  }


  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}

