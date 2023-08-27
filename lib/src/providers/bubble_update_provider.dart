

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'bubble_provider.dart';


final bubbleUpdateProvider = Provider<void>((ref) {
  ProviderListenable bubbleProvider;
  final bubble = ref.read(bubbleProvider).state;
  bubble.updates++; // 更新の数を増やす
  
  // ここでデータの量を更新するロジックを追加します。
  // 例えば、データが10バイト増えたとする
  bubble.dataSize += 10;

  bubble.recalculateSize(); // サイズを再計算
});
