// 

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:bubble_button/bubble_button.dart';

void main() => runApp(const ProviderScope(child: BubbleButton()));

class BubbleButton extends StatelessWidget {
  const BubbleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
      ),
    );
  }
}
