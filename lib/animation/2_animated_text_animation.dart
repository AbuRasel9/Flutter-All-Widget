import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextAnimation extends StatefulWidget {
  const AnimatedTextAnimation({super.key});

  @override
  State<AnimatedTextAnimation> createState() => _AnimatedTextAnimationState();
}

class _AnimatedTextAnimationState extends State<AnimatedTextAnimation> {
  List<Color>colorChange=[
    Colors.black,
    Colors.red,
    Colors.green,
    Colors.purple,

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Text"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            // SizedBox(
            //   height: 20,
            //   child: Column(
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       TextLiquidFill(
            //         text: "Flutter",
            //         boxHeight: 20,
            //         textStyle: const TextStyle(
            //           fontSize: 20,
            //           fontWeight: FontWeight.bold,
            //         ),
            //         waveColor: Colors.greenAccent,
            //         waveDuration: const Duration(seconds: 1),
            //         // boxBackgroundColor: Colors.black,
            //       ),
            //     ],
            //   ),
            // ),
            //wavy text ay text always up and down korbe

            const SizedBox(
              height: 30,
            ),
            DefaultTextStyle(
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.green),
                child: AnimatedTextKit(
                    repeatForever: true,
                    isRepeatingAnimation: true,
                    animatedTexts: [
                      WavyAnimatedText("This is Flutter World"),
                      WavyAnimatedText("This is wavy text flutter"),
                    ],),),

            const SizedBox(
              height: 20,
            ),
            //scale text ja always aktar por akta show korbe and zoom in hobe

            DefaultTextStyle(
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.purple),
              child: AnimatedTextKit(
                repeatForever: true,
                isRepeatingAnimation: true,
                animatedTexts: [
                  ScaleAnimatedText("Hello World"),
                  ScaleAnimatedText("Flutter App"),
                  ScaleAnimatedText("This is Flutter"),
                ],),) ,
            //animated fade text ja always aktar por akta show korbe

            const SizedBox(
              height: 20,
            ),

            DefaultTextStyle(
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.purple),
              child: AnimatedTextKit(
                repeatForever: true,
                isRepeatingAnimation: true,
                animatedTexts: [
                  ColorizeAnimatedText("Colorize Animated Text 1", textStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ), colors: colorChange,),
                  ColorizeAnimatedText("Colorize Animated Text 2", textStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ), colors: colorChange,),
                  ColorizeAnimatedText("Colorize Animated Text 3", textStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ), colors: colorChange,),
                ],),),
            const SizedBox(
              height: 20,
            ),
            //animated fade text ja always aktar por akta show korbe

            DefaultTextStyle(
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.purple),
              child: AnimatedTextKit(
                repeatForever: true,
                isRepeatingAnimation: true,
                animatedTexts: [
                  FadeAnimatedText("This is Flutter World"),
                  FadeAnimatedText("This is fade animated text flutter"),
                  FadeAnimatedText("This is third  fade animated text flutter"),
                ],),) ,
            const SizedBox(
              height: 20,
            ),
            //Typer Animated text ja aktar por akta word show korbe

            DefaultTextStyle(
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.deepOrange),
              child: AnimatedTextKit(
                repeatForever: true,
                isRepeatingAnimation: true,
                animatedTexts: [
                  TyperAnimatedText("Flutter Apps"),
                  TyperAnimatedText("Flutter Widget"),
                ],),) ,



          ],
        ),
      ),
    );
  }
}
