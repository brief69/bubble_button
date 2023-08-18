// 

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:bubble_button/bubble_button.dart';

void main() => runApp(ProviderScope(child: BubbleApp()));

class BubbleButton extends StatelessWidget {
  const BubbleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Bubble Button')),
        body: const Center(
          child: BubbleButton(),
        ),
      ),
    );
  }
}
