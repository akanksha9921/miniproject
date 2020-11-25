import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'main.dart';
import 'setting.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'display.dart';

class grid extends StatelessWidget {

  Material box(String heading){
    return Material(
        color: Colors.white,
        elevation: 5.0,
        shadowColor: Color(0x802196F3),
        borderRadius: BorderRadius.circular(24.0),
        child:Center(
            child:Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget>[

                        //text
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(heading,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                            ),),
                        )
                      ]
                  )
                ],
              ),
            )
        )
    );
  }

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
              'Magazine',
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black),
            ),
          ),
        ),

        //SIDEBAR
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("abc",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                accountEmail: Text("d@gmail.com",
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




        body: SafeArea(
         child: StaggeredGridView.count(
            crossAxisCount: 2,
            crossAxisSpacing:12.0 ,
            mainAxisSpacing: 25.0,
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 40.0),
            children: <Widget>[
              FlatButton(
                  child:box("2010"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Magazine()));
                },
              ),
              box("2011"),
              box("2012"),
              box("2013"),
              box("2014"),
              box("2015"),
              box("2016"),
              box("2017"),
            ],
            staggeredTiles: [
              StaggeredTile.extent(1, 150.0),
              StaggeredTile.extent(1, 150.0),
              StaggeredTile.extent(1, 150.0),
              StaggeredTile.extent(1, 150.0),
              StaggeredTile.extent(1, 150.0),
              StaggeredTile.extent(1, 150.0),
              StaggeredTile.extent(1, 150.0),
              StaggeredTile.extent(1, 150.0),
            ]
        ),
      ),
    )
    );
  }
}