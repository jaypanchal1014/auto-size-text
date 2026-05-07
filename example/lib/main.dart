import 'package:flutter/material.dart';
import 'package:flutter_auto_size_text/flutter_auto_size_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: const demo());
  }
}

class demo extends StatelessWidget {
  const demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Auto Size Text Demo')),
      body: Center(
        child: AdaptiveText(
          "This text automatically resizes to fit within its bounds. It will adjust its font size to ensure that it fits within the available space, making it ideal for responsive designs and dynamic content.",
          maxLines: 4,
          maxFontSize: 40,
          minFontSize: 10,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
