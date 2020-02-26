import 'package:flutter/material.dart';


class profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Column(children: <Widget>[
        Padding(
          padding:
          EdgeInsets.only(top: 20.0, left: 40.0, right: 40.0),
        ),
        CircleAvatar(
          minRadius: 45.0,
          child: Text(
            "N",
            style:
            TextStyle(fontSize: 30.0, color: Colors.deepPurple),
          ),
          backgroundColor: Colors.green,
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.0),
        ),
        ListTile(
          leading: Icon(Icons.person),
          subtitle: Text("Nishchay",style: TextStyle(fontSize: 18.0),),
          title: Text("Name"),
          trailing: Icon(Icons.edit),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.0),
        ),
        ListTile(
          leading: Icon(Icons.info),
          subtitle: Text("I am currently working as a software developer in amazon"),
          title: Text(
              "About"),
          trailing: Icon(Icons.edit),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.0),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          subtitle: Text("+1209776347"),
          title: Text("Phone"),
          trailing: Icon(Icons.edit),
        ),
      ]),
    );
  }
}