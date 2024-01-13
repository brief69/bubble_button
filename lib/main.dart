

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(
  const ProviderScope(
    child: BubbleButton('some_value_for_bubble'),  // bubble引数に何らかの値を渡す
  ),
);

class BubbleButton extends StatelessWidget {
  final String bubble;  // bubble引数をfinal変数として定義

  const BubbleButton(this.bubble, {Key? key}) : super(key: key);  // keyの指定方法を修正

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        // ここでbubbleを使うか、何か他の用途で使用する
      ),
    );
  }
}
