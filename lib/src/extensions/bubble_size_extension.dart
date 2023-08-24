

import '../models/bubble.dart';

extension BubbleSizeExtension on Bubble {
  // 基本サイズ、更新の数、データの量に応じてバブルのサイズを計算
  void recalculateSize() {
    // 例：各更新で5.0だけサイズを増やす
    // データの量が10単位増えるごとにサイズを1.0増やす
    size = 50.0 + (updates * 5.0) + (dataSize / 10);
  }
}
