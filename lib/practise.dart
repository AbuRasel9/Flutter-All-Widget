import 'package:flutter/material.dart';

class Practise extends StatefulWidget {
  const Practise({super.key});

  @override
  State<Practise> createState() => _PractiseState();
}

class _PractiseState extends State<Practise> {
  AlignmentGeometry _alignment1 = Alignment.topRight;
  AlignmentGeometry _alignment2 = Alignment.bottomLeft;

  void alignmentChange() {
    setState(() {
      _alignment1=_alignment1 == Alignment.topRight
          ? Alignment.bottomLeft
          : Alignment.topRight;
      _alignment2 =_alignment2== Alignment.bottomLeft
          ? Alignment.topRight
          : Alignment.bottomLeft;
    });
    print("check $_alignment1");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Align'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Stack(
          children: [
            AnimatedAlign(

              curve: Curves.bounceInOut,

              alignment: _alignment1,
              duration: Duration(seconds: 2),
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRX2csfNidti2yKtkD2DifEYvQZoI6WGOffhQ&s",
                height: 100,
                width: 100,
              ),
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    alignmentChange();
                    print("----------$_alignment1");
                  },
                  child: Text("Alignment Change")),
            ),
            AnimatedAlign(
              curve: Curves.bounceInOut,
              alignment: _alignment2,
              duration: Duration(seconds: 2),
              child: Image.network(
                "https://www.angrybirds.com/wp-content/uploads/2022/05/ABCOM_202203_1000x1000_CharacterDimensio_Chuck_Dreamblast.png",
                height: 150,
                width: 150,
              ),
            )
          ],
        ),
      ),
    );
  }
}
