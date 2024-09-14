import 'package:flutter/material.dart';

class WrapWidget extends StatefulWidget {
  const WrapWidget({super.key});

  @override
  State<WrapWidget> createState() => _WrapWidgetState();
}

class _WrapWidgetState extends State<WrapWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Wrap widget") ,),
      body: Wrap(
        spacing: 10,
        runSpacing: 20,
        children: [

          Image.network("https://www.shutterstock.com/image-illustration/angry-bird-charecter-illustration-white-600nw-2108303786.jpg",height: 80,width: 100,fit: BoxFit.cover,),
          Image.network("https://www.shutterstock.com/image-illustration/angry-bird-charecter-illustration-white-600nw-2108303786.jpg",height: 80,width: 100,fit: BoxFit.cover,),
          Image.network("https://www.shutterstock.com/image-illustration/angry-bird-charecter-illustration-white-600nw-2108303786.jpg",height: 80,width: 100,fit: BoxFit.cover,),
          Image.network("https://www.shutterstock.com/image-illustration/angry-bird-charecter-illustration-white-600nw-2108303786.jpg",height: 80,width: 100,fit: BoxFit.cover,),
          Image.network("https://www.shutterstock.com/image-illustration/angry-bird-charecter-illustration-white-600nw-2108303786.jpg",height: 80,width: 100,fit: BoxFit.cover,),
          Image.network("https://www.shutterstock.com/image-illustration/angry-bird-charecter-illustration-white-600nw-2108303786.jpg",height: 80,width: 100,fit: BoxFit.cover,),
          Image.network("https://www.shutterstock.com/image-illustration/angry-bird-charecter-illustration-white-600nw-2108303786.jpg",height: 80,width: 100,fit: BoxFit.cover,),
        ],
      ),
    );
  }
}
