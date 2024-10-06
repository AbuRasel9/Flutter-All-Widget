
import 'package:flutter/material.dart';

class AnimatedContainerAnimation extends StatefulWidget {
  const AnimatedContainerAnimation({super.key});

  @override
  State<AnimatedContainerAnimation> createState() =>
      _AnimatedContainerAnimationState();
}

class _AnimatedContainerAnimationState
    extends State<AnimatedContainerAnimation> {

  String containerCount="Container0";




  //jodi container 0 hoi tahole ay container show korbe
  Widget container_0= AnimatedContainer(
    height: 200,
    width: 200,
    duration: const Duration(
      seconds: 1,
    ),
    decoration: BoxDecoration(

      color: Colors.purple,
      borderRadius: BorderRadius.circular(50),
    ),
  );


  //jodi container 1 hoi tahole ay container show korbe
  Widget container_1= AnimatedContainer(
    height: 300,
    width: 200,
    duration: const Duration(
      seconds: 1,
    ),
    decoration: BoxDecoration(

      color: Colors.red,
      borderRadius: BorderRadius.circular(15),
    ),
  );


  //jodi container 2 hoi tahole ay container show korbe
  Widget container_2= AnimatedContainer(
    height: 200,
    width: 300,
    duration: const Duration(
      seconds: 1,
    ),
    decoration: BoxDecoration(

      color: Colors.green,
      borderRadius: BorderRadius.circular(50),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton(
            onPressed: () {
              containerCount="Container0";
              setState(() {

              });
            },
            child: const Text("Container 0")
          ),
          TextButton(
            onPressed: () {
              containerCount="Container1";
              setState(() {

              });            },
              child: const Text("Container 1")
          ),
          TextButton(
            onPressed: () {
              print(containerCount);
              containerCount="Container2";
              setState(() {

              });            },
              child: const Text("Container 2")
          )
        ],
      ),
      appBar: AppBar(
        title: const Text(
          "Animated Container",
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if(containerCount=="Container0")
              container_0,
            if(containerCount=="Container1")
              container_1,
            if(containerCount=="Container2")
              container_2,


          ],
        ),
      ),
    );
  }
}
