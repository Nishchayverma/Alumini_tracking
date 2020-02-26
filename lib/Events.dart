import 'package:flutter/material.dart';

class eventpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
      contentPadding: const EdgeInsets.all(8.0),
              title: Text("Chess Competition"),
              subtitle: Text("Inter department Competition to be held on 21/3/2020"),
              trailing: MaterialButton(

                  height: 40.0,
                  minWidth: 100.0,
                  color: Colors.white,
                  textColor: Colors.redAccent,
                  hoverElevation: 20.0,
                  splashColor: Colors.pinkAccent,
                  elevation: 15.0,
                  child: Text("Register"),
              ),

            ),
            ListTile(
              contentPadding: const EdgeInsets.all(8.0),
              title: Text("Hackathon"),
              subtitle: Text("Inter hackathon to be held on 22/2/2020"),
              trailing: MaterialButton(
                height: 40.0,
                minWidth: 100.0,
                color: Colors.white,
                textColor: Colors.redAccent,
                hoverElevation: 20.0,
                splashColor: Colors.pinkAccent,
                elevation: 15.0,
                child: Text("Register"),
              ),

            ),

            ListTile(
              contentPadding: const EdgeInsets.all(8.0),
              title: Text("dance competition"),
              subtitle: Text("Inter department Dance to be held on 21/4/2020"),
              trailing: MaterialButton(
                height: 40.0,
                minWidth: 100.0,
                color: Colors.white,
                textColor: Colors.redAccent,
                hoverElevation: 20.0,
                splashColor: Colors.pinkAccent,
                elevation: 15.0,
                child: Text("Register"),
              ),

            ),

          ],
        ),

      ),
    );
  }
}