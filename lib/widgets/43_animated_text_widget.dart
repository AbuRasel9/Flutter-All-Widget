import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatefulWidget {
  const AnimatedTextWidget({super.key});

  @override
  State<AnimatedTextWidget> createState() => _AnimatedTextWidgetState();
}

class _AnimatedTextWidgetState extends State<AnimatedTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Text Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            //text upper to down animation
            Container(
              height: 100,
              padding: const EdgeInsets.only(
                left: 15,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: Colors.red),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "My Name is ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  /*    const SizedBox(
                    width: 20,
                    height: 100,
                  ),*/
                  Expanded(
                    child: DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Horizon',
                        ),
                        child: AnimatedTextKit(
                          repeatForever: true,
                          animatedTexts: [
                            RotateAnimatedText("Abu Rasel"),
                            RotateAnimatedText("Flutter Developer"),
                            RotateAnimatedText("Dream Asp Bangladesh Police",
                                textAlign: TextAlign.center),
                          ],
                          onTap: () {
                            print("Tap the text");
                          },
                        )),
                  )
                ],
              ),
            ),

            //type animated text
            Container(
              height: 100,
              width: double.infinity,
              margin: const EdgeInsets.only(
                top: 10,
              ),
              padding: const EdgeInsets.only(left: 10, top: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: Colors.red),
              child: DefaultTextStyle(
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                  child: AnimatedTextKit(repeatForever: true, animatedTexts: [
                    TyperAnimatedText("My Name is Rasel"),
                    TyperAnimatedText("My Dream Asp Bangladesh Police"),
                    TyperAnimatedText("My Allah Help Me"),
                  ])),
            ),
            const SizedBox(height: 30,),
            TextLiquidFill(
              text: "Bangladesh Police",
              waveColor: Colors.blue,
              boxBackgroundColor: Colors.redAccent,
              textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              boxHeight: 25,
              boxWidth: 160,
            ),
          ],
        ),
      ),
    );
  }
}
