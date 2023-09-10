

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/bubble.dart';

final bubbleListProvider = StateProvider<List<Bubble>>((ref) => [
  // 初期バブルのリスト
]);

final bubbleInteractionProvider = Provider<void>((ref) {
  final bubbleListState = ref.read(bubbleListProvider.notifier);
  final bubbleList = bubbleListState.state;

  // すべてのバブル間での相互作用を計算
  List<Bubble> newBubbleList = [];
  for (var bubble in bubbleList) {
    var newBubble = bubble.clone(); // Bubble クラスに clone メソッドが必要
    for (var otherBubble in bubbleList) {
      if (bubble != otherBubble) {
        // 他のバブルとの距離や相互作用を計算
        if (newBubble.size > 100) {
          var newOtherBubble = otherBubble.clone();
          newOtherBubble.size -= 10;
          newBubbleList.add(newOtherBubble);
        } else {
          newBubbleList.add(otherBubble.clone());
        }
      }
    }
    newBubbleList.add(newBubble);
  }
  bubbleListState.state = newBubbleList;
});
