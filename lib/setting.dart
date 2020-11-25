import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'home.dart';


class SettingsPane extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SettingsPaneState();
  }
}

class _SettingsPaneState extends State<SettingsPane> {
  Widget settingsList({String text, GestureTapCallback onTap}) {
    return ListTile(
      //contentPadding: EdgeInsets.only(top: 20.0, left: 20.0),
      leading: Icon(Icons.fiber_manual_record,
          color: Theme.of(context).textTheme.bodyText2.color, size: 34.0),
      title: Text(
        text,
        style: Theme.of(context).textTheme.bodyText2,
      ),

      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0C7EC55),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => home()),
            ),
          ),
          centerTitle: true,
          title: Text(
            'Settings',
          ),
        ),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text(
                  'Mode Switch',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                trailing: IconButton(
                  /* onPressed: () {
                    ThemesNotifier themesNotifier =
                        Provider.of<ThemesNotifier>(context, listen: false);
                    themesNotifier.changeTheme();
                  },*/
                  icon: Icon(
                    Icons.brightness_medium,
                    color: Theme.of(context).textTheme.bodyText2.color,
                  ),
                ),
              ),
              /*Divider(),
              settingsList(
                  text: 'CHANGE FONT SIZE',
                  onTap: () => Navigator.push(
                    context,MaterialPageRoute(builder:(context)=>FontSizeModify())
                  )
              ),
              Divider(),
              settingsList(
                  text: 'CHANGE FONT',
                  onTap: () => Navigator.pushNamed(context, '/changeFont')),*/
              Divider(),
              ListTile(
                leading: Icon(Icons.info,
                    color: Theme.of(context).textTheme.bodyText2.color),
                title: Text('ABOUT'),
                /*style: TextStyle(
                      fontSize: Theme.of(context)
                          .appBarTheme
                          .textTheme
                          .headline6
                          .fontSize,
                      color: Theme.of(context).textTheme.bodyText2.color,
                    )),*/
                subtitle: Text('Project_by: Div B \n Version:1.0.0',
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText2.color,
                    )),
              ),
              ListTile(
                leading: Icon(Icons.help,
                    color: Theme.of(context).textTheme.bodyText2.color),
                title: Text('HELP   '),
              )
            ],
          ),
        ),
      ),
    );
  }
}
