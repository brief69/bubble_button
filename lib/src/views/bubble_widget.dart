

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:bubble_button/src/providers/bubble_provider.dart';

class BubbleButton extends ConsumerWidget {
  const BubbleButton({super.key});

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final bubble = watch(bubbleProvider).state;
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(bubble.color),
        minimumSize: MaterialStateProperty.all(Size(bubble.size, bubble.size)),
      ),
      onPressed: () {
        context.read(bubbleUpdateProvider); // ボタンを押すたびに更新
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(bubble.label),
          Text('Updates: ${bubble.updates}'), // 更新の数を表示
        ],
      ),
    );
  }
}

// TODO: 動的なデータの変更を実装
// TODO: 具体的には、バブルが持つデータを動的に変更できるロジックやUIを実装

// TODO: バブルボタンがどのように見えるべきか?どのようなアニメーションやトランジションが必要かを考える
// TODO: その他必要な設計を考える