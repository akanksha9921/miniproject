import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:minipro/main.dart';
import 'package:minipro/newsdisplay.dart';
import 'package:minipro/newsletter.dart';
import 'Signup.dart';
import 'main.dart';
import 'setting.dart';
import 'grid.dart';


class home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xfff2f2f2),
        appBar: AppBar(
          backgroundColor: Color(0xff0C7EC55),
          title: Padding(
            padding: EdgeInsets.fromLTRB(50, 1, 1, 1),
            child: Text(
              'Digital Magazine',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black),
            ),
          ),
        ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                // accountName: Text("abc",
                //   style: TextStyle(
                //     color: Colors.black,
                //     fontSize: 20,
                //   ),
                // ),
                accountEmail: Text("",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xff0C7EC55),
                ),
              ),
              ListTile(
                leading: Icon(Icons.bookmark),
                title: Text('Bookmark',
                  style:TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingsPane()));
                },
                title: Text('Settings',
                  style:TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),

              ListTile(
                leading: Icon(Icons.exit_to_app),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyLoginPage()));
                },
                title: Text('Logout',
                    style:TextStyle(
                      fontSize: 18,
                    )
                ),
              ),
            ],
          ),
        ),


        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Center(
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.stretch,

                children: <Widget>[
                  SizedBox(
                    height: 45.0,
                  ),
                  Container(
                    //padding: EdgeInsets.only(left: 20, right:30),
                    height: 200.0,
                    width: 350.0,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 10, 20, 5),
                      child: FlatButton(
                        child:Text(
                        'Magazine',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => grid()));
                        },
                    ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffFFE8D9),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  Container(
                    height: 200.0,
                    width: 350.0,
                    //color: Color(0xffC8CBF0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 10, 20, 5),
                      child: FlatButton(
                        child:Text(
                          'Newsletter',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => newsletter()));
                        },
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffC8CBF0),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  Container(
                    height: 200.0,
                    width: 350.0,
                    //color: Color(0xffFFFCB7),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(95, 80, 20, 5),
                      child: Text(
                        'Upcoming Events',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffFFFCB7),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  )
                ],
              )
          ),
        ),
      ),
    );


  }
}
