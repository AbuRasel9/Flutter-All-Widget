import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({super.key});

  @override
  State<AnimatedCrossFadeWidget> createState() =>
      _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool _showImage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Cross Fade"),
      ),
      body: Center(
        child: AnimatedCrossFade(
          
            firstCurve: Curves.easeInCubic,
            secondCurve: Curves.easeInCirc,
            firstChild: GestureDetector(
              onTap: (){
                _showImage=!_showImage;
                setState(() {

                });
              },
              child: Image.network(
                  "https://t4.ftcdn.net/jpg/05/47/97/81/360_F_547978128_vqEEUYBr1vcAwfRAqReZXTYtyawpgLcC.jpg"),
            ),
            secondChild: GestureDetector(
              onTap: (){
                _showImage=!_showImage;
                setState(() {

                });
              },
              child: Image.network(
                  "https://i.pinimg.com/736x/0f/07/71/0f0771cdb751568e01ee6d6a044a4bdb.jpg"),
            ),
            crossFadeState: _showImage
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: Duration(seconds: 1)),
      ),
    );
  }
}
