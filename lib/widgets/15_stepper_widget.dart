import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({super.key});

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int _currentIndex=0;

  final ScrollController scrollController=ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stepper Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Stepper(
          onStepTapped: (index){

            setState(() {
              _currentIndex=index;

            });
          },
          currentStep: _currentIndex,
          //on step continue use korle jokhon continue button a click kor

          onStepContinue: (){
            if(_currentIndex!=8){
              setState(() {
                _currentIndex++;

              });
            }
          },
          onStepCancel: (){
            if(_currentIndex!=0){
              setState(() {
                _currentIndex--;
              });
            }
          },

          // stepIconHeight: 20,
          type: StepperType.vertical,
          controller: scrollController,
            steps: [
          //step 1
           Step(
             isActive: _currentIndex >= 0,
             state: _currentIndex >= 0 ?
             StepState.complete : StepState.disabled,
             stepStyle: StepStyle(
               color:_currentIndex==0? Colors.green:Colors.black38,
               border: Border.all(color: Colors.red)
             ),
             label: Text("abc"),
            subtitle: Text("step ${_currentIndex.toString()}"),
            title: Text("Step 1"),
            content: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Email Address'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Password'),
                ),
              ],
            ),
          ),
           Step(
            stepStyle: StepStyle(
                color:_currentIndex==1? Colors.green:Colors.black38
            ),

            title: Text("Step 2"),
            content: Text("Collage"),
          ),
           Step(
            stepStyle: StepStyle(
                color:_currentIndex==2? Colors.green:Colors.black38
            ),

            title: Text("Step 3"),
            content: Text("University"),
          ),
           Step(
            stepStyle: StepStyle(
                color:_currentIndex==3? Colors.green:Colors.black38
            ),

            title: Text("Step 4"),
            content: Text("University"),
          ),
           Step(
            stepStyle: StepStyle(
                color:_currentIndex==4? Colors.green:Colors.black38
            ),

            title: Text("Step 5"),
            content: Text("University"),
          ),
           Step(
            stepStyle: StepStyle(
                color:_currentIndex==5? Colors.green:Colors.black38
            ),

            title: Text("Step 6"),
            content: Text("University"),
          ),
        ],

        ),
      ),
    );
  }
}
