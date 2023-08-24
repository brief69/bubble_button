

final bubbleListProvider = StateProvider<List<Bubble>>((ref) => [
  // 初期バブルのリスト
]);

final bubbleInteractionProvider = Provider<void>((ref) {
  final bubbleList = ref.read(bubbleListProvider).state;

  // すべてのバブル間での相互作用を計算
  for (var bubble in bubbleList) {
    for (var otherBubble in bubbleList) {
      if (bubble != otherBubble) {
        // 他のバブルとの距離や相互作用を計算
        // このロジックは簡単なものとして、
        // あるバブルが一定のサイズを超えると、他のバブルを下に移動させるとします。
        if (bubble.size > 100) {
          // 他のバブルを下に移動
          otherBubble.size -= 10;
        }
      }
    }
  }
});
