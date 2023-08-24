 // /Users/ir/Desktop/BubbleButton/bubble_button/lib/src/models/bubble.dart

import 'dart:ui';

class Bubble {
  final String id;
  double size;
  final Color color;
  final String label;
  int updates; // 更新の数
  int dataSize; // データの量（例: バイト数、項目数など）

  Bubble({
    required this.id,
    this.size = 50.0,
    required this.color,
    required this.label,
    this.updates = 0,
    this.dataSize = 0,
  });

  get state => null;
}

class MergingBubble {
  final Bubble bubble1;
  final Bubble bubble2;
  double progress; // 0.0 (完全に分割) から 1.0 (完全に結合) まで

  MergingBubble({
    required this.bubble1,
    required this.bubble2,
    this.progress = 0.0,
  });
  // TODO #1:結合の進捗に基づいてバブルの現在のサイズや形状を計算するロジックを追加
}


