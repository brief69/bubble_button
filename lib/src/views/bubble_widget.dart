// /Users/ir/Desktop/BubbleButton/bubble_button/lib/src/views/bubble_widget.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:bubble_button/src/providers/bubble_provider.dart'; // パスは適宜調整してください。

class BubbleButton extends ConsumerWidget {
  const BubbleButton({Key? key}) : super(key: key); // super.keyをKey? keyに修正

  // bubbleProviderをクラス内で定義する代わりに、bubble_provider.dartからインポートします。
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bubble = ref.watch(singleBubbleProvider); // singleBubbleProviderを使用
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(bubble.color),
        minimumSize: MaterialStateProperty.all(Size(bubble.size, bubble.size)),
      ),
      onPressed: () {
        ref.read(bubbleUpdateProvider); // WidgetRef refを使用してread
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(bubble.label),
          Text('Updates: ${bubble.updates}'), // 更新の数を表示
          ElevatedButton(
            onPressed: () {
              // 動的なデータの変更をここで実装
              // 例えば、バブルサイズを動的に変更
              ref.read(bubbleUpdateProvider);
            },
            child: const Text('Update Data'),
          ),
          // ここでアニメーションやトランジションを考える
          // 例：サイズ変更アニメーション
          AnimatedContainer(
            width: bubble.size,
            height: bubble.size,
            duration: const Duration(seconds: 1),
            curve: Curves.easeIn,
          ),
        ],
      ),
    );
  }
}
