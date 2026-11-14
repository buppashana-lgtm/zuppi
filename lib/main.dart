
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZUPPI',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFFFFCF5),

      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // ZUPPI Mascot
              Image.asset(
                'assets/images/zuppi_mascot.png',
                height: size.height / 2.8,
                fit: BoxFit.contain,
              ),

              const SizedBox(height: 20),

              // ZUPPI Wordmark
              Image.asset(
                'assets/images/zuppi_text.png',
                width: size.width / 1.3,
                fit: BoxFit.contain,
              ),

              const SizedBox(height: 25),

              const Text(
                'Discover. Explore. Experience.',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF30243E),
                  fontWeight: FontWeight.w500,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
