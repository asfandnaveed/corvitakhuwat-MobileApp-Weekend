import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Lottie.asset('assets/animation/music.json'),
          ),
        ),
      ),
    );
  }
}
