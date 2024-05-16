import 'package:flutter/material.dart';

class AnimatedAlignWidget extends StatefulWidget {
  const AnimatedAlignWidget({super.key});

  @override
  State<AnimatedAlignWidget> createState() => _AnimatedAlignWidgetState();
}

class _AnimatedAlignWidgetState extends State<AnimatedAlignWidget> {
  /*
    akhane first logo er alignment set kora hoice app
    run howar prothome amn dekhabe
 */
  AlignmentGeometry firstLogoAlignment = Alignment.topLeft;
  AlignmentGeometry secondLogoAlgnment = Alignment.bottomRight;

  alignmentChangeFunction() {
    setState(() {
      /*
      jodi first logo top left a thake button click korle bottom right a asbe

      na hole top left a jabe
      */
      firstLogoAlignment = firstLogoAlignment == Alignment.topLeft
          ? Alignment.bottomRight
          : Alignment.topLeft;

      /*
      jodi first logo bottom right a thake button click korle top left  a asbe

      na hole bottom right a jabe
      */
      secondLogoAlgnment = secondLogoAlgnment == Alignment.bottomRight
          ? Alignment.topLeft
          : Alignment.bottomRight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Align"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.greenAccent,
        child: Stack(
          children: [
            AnimatedAlign(
              alignment: firstLogoAlignment,
              duration: const Duration(seconds: 4),
              child: const FlutterLogo(
                textColor: Colors.red,
                size: 100,
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  alignmentChangeFunction();
                },
                child: const Text("Start"),
              ),
            ),
            AnimatedAlign(
              alignment: secondLogoAlgnment,
              duration: const Duration(seconds: 4),
              child: const FlutterLogo(
                textColor: Colors.blue,
                size: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
