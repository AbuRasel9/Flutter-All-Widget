import 'package:flutter/material.dart';
import 'dart:math'; // Math constant (π) এর জন্য
import 'package:audioplayers/audioplayers.dart'; // টিক টিক শব্দের জন্য

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PremiumClockWithDots(),
  ));
}

class PremiumClockWithDots extends StatefulWidget {
  const PremiumClockWithDots({Key? key}) : super(key: key);

  @override
  State<PremiumClockWithDots> createState() => _PremiumClockWithDotsState();
}

class _PremiumClockWithDotsState extends State<PremiumClockWithDots> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final AudioPlayer _player = AudioPlayer(); // অডিও প্লেয়ার তৈরি

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60), // ৬০ সেকেন্ডে ১ বার পুরা ঘুরবে
    )..repeat(); // বারবার ঘুরবে

    // প্রতি সেকেন্ডে টিক টিক শব্দ বাজাবে
    Stream.periodic(const Duration(seconds: 1)).listen((_) {
      _player.play(AssetSource('tick.mp3')); // অ্যাসেট থেকে টিক শব্দ প্লে
    });
  }

  @override
  void dispose() {
    _controller.dispose(); // মেমোরি পরিষ্কার
    _player.dispose(); // অডিও প্লেয়ার বন্ধ
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          // ব্যাকগ্রাউন্ডে সুন্দর গ্রেডিয়েন্ট
          gradient: LinearGradient(
            colors: [Color(0xFF000428), Color(0xFF004e92)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Container(
            width: 320,
            height: 320,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white70, width: 8), // বাইরের বর্ডার
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  blurRadius: 20,
                  spreadRadius: 2,
                ),
              ],
              gradient: const RadialGradient(
                colors: [Colors.white12, Colors.black54],
              ),
            ),
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                DateTime now = DateTime.now(); // এখনকার রিয়েল টাইম
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    // ঘড়ির চারপাশে ৬০টি ছোট ডট তৈরি করা
                    for (int i = 0; i < 60; i++)
                      Transform.rotate(
                        angle: (i * 6) * pi / 180, // প্রতিটি ৬° কোণে ডট
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            margin: const EdgeInsets.only(top: 8),
                            width: i % 5 == 0 ? 6 : 3, // প্রতি ৫ সেকেন্ডে বড় ডট
                            height: i % 5 == 0 ? 6 : 3,
                            decoration: BoxDecoration(
                              color: i % 5 == 0 ? Colors.white : Colors.white54,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),

                    // ঘড়ির সংখ্যা (1-12)
                    for (int i = 1; i <= 12; i++)
                      Transform.translate(
                        offset: Offset(
                          120 * cos((i * 30 - 90) * pi / 180),
                          120 * sin((i * 30 - 90) * pi / 180),
                        ),
                        child: Text(
                          '$i',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                    // ঘণ্টার কাঁটা
                    Transform.rotate(
                      angle: (now.hour % 12 + now.minute / 60) * 30 * pi / 180,
                      child: Container(
                        width: 10,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(5), // গোলাকার মাথা
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.6),
                              blurRadius: 8,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                      ),
                    ),

                    // মিনিটের কাঁটা
                    Transform.rotate(
                      angle: (now.minute + now.second / 60) * 6 * pi / 180,
                      child: Container(
                        width: 6,
                        height: 110,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(3),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.green.withOpacity(0.6),
                              blurRadius: 8,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                      ),
                    ),

                    // সেকেন্ডের কাঁটা
                    Transform.rotate(
                      angle: now.second * 6 * pi / 180,
                      child: Container(
                        width: 3,
                        height: 130,
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red.withOpacity(0.6),
                              blurRadius: 8,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Center point (সাদা গোল)
                    Container(
                      width: 14,
                      height: 14,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
