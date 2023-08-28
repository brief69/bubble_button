// /Users/ir/Desktop/BubbleButton/bubble_button/lib/src/providers/bubble_update_provider.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'bubble_provider.dart';


final bubbleUpdateProvider = Provider<void>((ref) {
  final bubbleState = ref.read(singleBubbleProvider);
  final bubble = bubbleState.state;

  final updatedBubble = bubble.copyWith(
    updates: bubble.updates + 1,
    dataSize: bubble.dataSize + 10, // 例: データが10バイト増えた
    // その他の更新が必要な場合
  );

   ref.container.read(singleBubbleProvider.notifier).state = updatedBubble;
});
