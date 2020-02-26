import 'package:flutter/material.dart';
import 'package:login_page/messages.dart';
import 'package:login_page/profile.dart';
import 'Events.dart';

class aluminipage extends StatefulWidget {
  @override
  State createState() => aluminipageState();
}

class aluminipageState extends State<aluminipage> {
  final TextStyle style = new TextStyle(fontSize: 20, color: Colors.blueGrey);
  final TextStyle style2 = new TextStyle(fontSize: 40, color: Colors.blueGrey);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.0),
          child: AppBar(
              backgroundColor: Colors.green,
              centerTitle: true,
              //tabbarview
              title: Text(
                "Home",
                style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 1.0,
                    color: Colors.deepPurple),
              ),
              actions: <Widget>[
                IconButton(
                  color: Colors.deepPurple,
                  icon: Icon(Icons.notifications_none),
                  onPressed: () {},
                ),
                IconButton(
                  color: Colors.deepPurple,
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ],
              elevation: 6,
              titleSpacing: 12,
              bottom: TabBar(tabs: <Widget>[
                Tab(
                  child: Text(
                    "Profile",
                    style: TextStyle(color: Colors.deepPurple),
                  ),
                  icon: Icon(
                    Icons.person,
                    color: Colors.deepPurple,
                  ),
                ),
                Tab(
                  child: Text(
                    "Messages",
                    style: TextStyle(color: Colors.deepPurple),
                  ),
                  icon: Icon(
                    Icons.email,
                    color: Colors.deepPurple,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.event_note,
                    color: Colors.deepPurple,
                  ),
                  child: Text(
                    "Events",
                    style: TextStyle(color: Colors.deepPurple),
                  ),
                ),
              ]),
              iconTheme: new IconThemeData(color: Colors.deepPurple)),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(10.0),
                child: profile(),
            ),
            Center(
              child: HomePage(),
            ),
            Center(
              child: eventpage(),
            ),
          ],
        ),
        drawer: Drawer(
          elevation: 30,
          child: Container(
            child: ListView(children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurple),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text(
                    "N",
                    style: TextStyle(fontSize: 30.0, color: Colors.deepPurple),
                  ),
                ),
                accountName: Text(
                  "Nishchay Verma",
                  style: TextStyle(color: Colors.black54, fontSize: 20.0),
                ),
                accountEmail: Text(
                  "nishchayverma20@gmail.com",
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.verified_user,
                  color: Colors.blue,
                ),
                title: Text(
                  "My Profile",
                  style: style,
                ),
                trailing: Icon(Icons.edit, color: Colors.green),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              profile()));

                },
              ),
              ListTile(
                leading: Icon(
                  Icons.code,
                  color: Colors.blue,
                ),
                title: Text(
                  "Events",
                  style: style,
                ),
                trailing: Icon(
                  Icons.remove_red_eye,
                  color: Colors.green,
                ),
                onTap: () {

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              eventpage()));

                },
              ),
              ListTile(
                leading: Icon(
                  Icons.people,
                  color: Colors.blue,
                ),
                title: Text("Groups", style: style),
                trailing: DropdownButton(
                    iconEnabledColor: Colors.green,
                    items: <String>['Friends', 'Reunion', 'BFF']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                    icon: Icon(Icons.arrow_downward)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.message,
                  color: Colors.blue,
                ),
                title: Text(
                  "Messages  (20)",
                  style: style,
                ),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.signal_cellular_off,
                  color: Colors.blue,
                ),
                title: Text(
                  "Logout",
                  style: style,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
