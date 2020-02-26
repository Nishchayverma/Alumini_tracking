import 'package:flutter/material.dart';
import 'registration_screen.dart';
import 'aluminipage.dart';

void main() {
  runApp(MaterialApp(


    debugShowCheckedModeBanner: false,
    home: LoginPage(),

  ));
}

class LoginPage extends StatefulWidget {
  @override
  State createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void initState() {
    super.initState();

    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 1000));
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.easeOut);
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
    setState(() {});
  }

  String check = "nishchayverma20@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(fit: StackFit.expand, children: <Widget>[
      getImage(),
      Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Form(

                  child: Container(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            TextFormField(
                              controller: email,
                              decoration: InputDecoration(
                                  labelText: "Enter Email",
                                  labelStyle: TextStyle(color: Colors.white70)),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            TextFormField(
                              controller: password,
                              decoration: InputDecoration(
                                  labelText: "Enter Password",
                                  labelStyle: TextStyle(color: Colors.white70)),
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40.0),
                            ),
                            Row(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                              ),
                              MaterialButton(
                                height: 40.0,
                                minWidth: 100.0,
                                color: Colors.white,
                                textColor: Colors.redAccent,
                                hoverElevation: 20.0,
                                splashColor: Colors.pinkAccent,
                                elevation: 15.0,
                                child: Text("Login"),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              aluminipage()));
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 30.0),
                              ),
                              MaterialButton(
                                height: 40.0,
                                minWidth: 100.0,
                                color: Colors.white,
                                textColor: Colors.redAccent,
                                hoverElevation: 20.0,
                                splashColor: Colors.pinkAccent,
                                elevation: 15.0,
                                child: Text("Register"),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              register()));
                                },
                              )
                            ]),
                          ]))

    )])
    )],
      ));

  }
}

Widget getImage() {
  return Opacity(
    opacity: 0.8,
    child: Image(
      image: AssetImage(
        "images/alumi.jfif",
      ),
      fit: BoxFit.cover,
      color: Colors.black54,
      colorBlendMode: BlendMode.darken,
    ),
  );
}
