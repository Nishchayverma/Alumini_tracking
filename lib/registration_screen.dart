import 'package:flutter/material.dart';
import 'college_registration.dart';

class register extends StatefulWidget {
  @override
  State createState() => registerState();
}

class registerState extends State<register> {
  var currentStep=0;




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
  appBar: AppBar(
    title: Text(
      "Personnel information"
    ),
    automaticallyImplyLeading: false,
    actions: <Widget>[
      Icon(Icons.help,
        size: 20.0,
      )
    ],

  ),
        body: SingleChildScrollView(
          child: Column(

            children: <Widget>[

           Container(


             color: Colors.white70,



              child: Stepper(
                steps: mySteps,
                currentStep: currentStep,
                type: StepperType.vertical,
                onStepTapped: (Step){
                  setState(() {
                    currentStep=Step;
                  });
                },
                onStepContinue: (){

                  setState(() {
                    if (currentStep < mySteps.length - 1) {

                      currentStep = currentStep + 1;
                    } else {
                      //logic to check if everything is Pok
                      print("COMPLETED");
                    }
                  });
                },
                onStepCancel: (){
                  setState(() {
                    if(currentStep>0){
                      currentStep = currentStep-1;
                    }else {
                      currentStep = 0;
                    }
                  });
                },
              ),
            ),


              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0,left: 70.0),
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
                  onPressed: ()  {
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
                textColor: Colors.white70,
                hoverElevation: 20.0,
                splashColor: Colors.pinkAccent,
                elevation: 15.0,
                child: Text("Continue"),
                onPressed: ()  {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => college()));
                },
              ),
          ]),
       ]) ));
  }

  List<Step> mySteps = [
    Step(
      title: Text("Enter Name"),
      content: TextField(decoration: InputDecoration(

      ),),
      isActive: true,


    ),
    Step(

        title: Text("Enter class"),
        content: TextField(decoration: InputDecoration(

        ),),
        isActive: true),
    Step(
        title: Text("Enter roll number"),
        content: TextField(decoration: InputDecoration(

        ),),
        isActive: true),
    Step(
        title: Text("Enter email"),
        content: TextField(decoration: InputDecoration(

        ),),
        isActive: true),


    Step(
        title: Text("Enter phone number"),
        content: TextField(decoration: InputDecoration(

        ),),
        isActive: true),
  ];


}
