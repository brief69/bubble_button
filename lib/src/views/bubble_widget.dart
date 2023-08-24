

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:bubble_button/src/models/bubble.dart';
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

// TODO: 他のバブルとの相互作用の実装
// TODO: 具体的には、あるバブルが大きくなることで、他のバブルが変形する、下に落ちたりする、安定してデータの更新がある場合、よりバブルの丸が安定する
// TODO: 複数のバブル間での相互作用を管理するためのロジックやProviderを実装
// TODO: 色やラベルの動的変更を可能にするUIやロジックの実装

// TODO: 2つのバブルデータの統合による結合するロジックを実装
// TODO: 結合中、結合後にどのように表示するのかのロジックを実装

// TODO: 動的なデータの変更を実装
// TODO: 具体的には、バブルが持つデータを動的に変更できるロジックやUIを実装

// TODO: バブルボタンがどのように見えるべきか?どのようなアニメーションやトランジションが必要かを考える
// TODO: その他必要な設計を考える