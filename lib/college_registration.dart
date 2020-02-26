import 'package:flutter/material.dart';

class college extends StatefulWidget {
  @override
  State createState() => collegeState();
}

class collegeState extends State<college> {
  var currentStep = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("College information"),
          automaticallyImplyLeading: false,
          actions: <Widget>[
            Icon(
              Icons.help,
              size: 20.0,
            )
          ],
        ),
        body: Column(children: <Widget>[
          Container(
            color: Colors.white70,
            child: Stepper(
              steps: mySteps,
              currentStep: currentStep,
              type: StepperType.vertical,
              onStepTapped: (Step) {
                setState(() {
                  currentStep = Step;
                });
              },
              onStepContinue: () {
                setState(() {
                  if (currentStep < mySteps.length - 1) {
                    currentStep = currentStep + 1;
                  } else {
                    //logic to check if everything is Pok
                    print("COMPLETED");
                  }
                });
              },
              onStepCancel: () {
                setState(() {
                  if (currentStep > 0) {
                    currentStep = currentStep - 1;
                  } else {
                    currentStep = 0;
                  }
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.0),
          ),
          Row(children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 50.0),
            ),
            MaterialButton(
              height: 40.0,
              minWidth: 100.0,
              color: Colors.white,
              textColor: Colors.blue,
              hoverElevation: 20.0,
              splashColor: Colors.pinkAccent,
              elevation: 15.0,
              child: Text("Back"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            Padding(
              padding: EdgeInsets.only(right: 30.0),
            ),
            MaterialButton(
              height: 40.0,
              minWidth: 100.0,
              color: Colors.blue,
              textColor: Colors.white,
              hoverElevation: 20.0,
              splashColor: Colors.pinkAccent,
              elevation: 15.0,
              child: Text("Continue"),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
            ),
          ])
        ]));
  }

  List<Step> mySteps = [
    Step(
      title: Text("Enter Year of admission"),
      content: TextFormField(
        decoration: InputDecoration(),
      ),
      isActive: true,
    ),
    Step(
        title: Text("Enter year of passout"),
        content: TextField(
          decoration: InputDecoration(),
        ),
        isActive: true),
    Step(
        title: Text("Enter final cgpa"),
        content: TextField(
          decoration: InputDecoration(),
        ),
        isActive: true),
  ];
}
