

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/bubble.dart';

class BubbleState extends StateNotifier<List<Bubble>> {
  BubbleState() : super([]);
  
  get bubbleList => null;

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
   bubbleList.add(newBubble);

  // 結合が完了したバブルをmergingBubblesリストから削除
  bubbleList.removeWhere((b) => b.id == mergingBubble.bubble1.id || b.id == mergingBubble.bubble2.id);
}

final bubbleProvider = StateNotifierProvider<BubbleState, List<Bubble>>((ref) => BubbleState());
}
