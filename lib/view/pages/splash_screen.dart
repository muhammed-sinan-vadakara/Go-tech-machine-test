import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gotech_mashinetest/view/pages/home_page.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Center(
          child: TextLiquidFill(
            waveDuration: const Duration(seconds: 1),
            loadDuration: const Duration(seconds: 5),
            text: 'MACHINE TEST',
            waveColor: Colors.blueAccent,
            boxBackgroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
            boxHeight: 120,
          ),
        ),
      ),
    );
  }
}
