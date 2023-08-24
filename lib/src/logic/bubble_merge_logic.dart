

import 'package:flutter/material.dart';

import '../models/bubble.dart';

void finalizeMerge(MergingBubble mergingBubble) {
  // バブルのデータを組み合わせるロジック（例: サイズを合計する）
  final newSize = mergingBubble.bubble1.size + mergingBubble.bubble2.size;

  // 新しいバブルを生成
  final newBubble = Bubble(
    id: 'new_id',
    size: newSize,
    color: Colors.blue, // 任意の方法で色を選択
    label: 'Merged Bubble',
  );

  // 新しいバブルをバブルリストに追加

  // 結合が完了したバブルをmergingBubblesリストから削除
  state = state.where((b) => b != mergingBubble).toList();
}
