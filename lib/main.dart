import 'package:flutter/material.dart';
import 'package:experimental/shopping.dart';

void main(List<String> args) {
  runApp(const MainBody());
}

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Shopping(),
      ),
    );
  }
}
