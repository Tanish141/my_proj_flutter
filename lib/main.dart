import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import SystemChrome
import 'splash1.dart';
import 'splash2.dart';
import 'splash3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen Navigation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Splash1(),
      builder: (context, child) {
        // Hide the system UI (notification bar and navigation bar)
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
        return child!;
      },
    );
  }
}
