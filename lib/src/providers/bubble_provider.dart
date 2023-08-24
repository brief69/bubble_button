// 

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/bubble.dart';

final singleBubbleProvider = StateProvider<Bubble>((ref) => Bubble(
    id: '1', size: 50.0, color: Colors.blue, label: 'Default Bubble'));

final bubbleUpdateProvider = Provider<void>((ref) {
  final bubble = ref.read(singleBubbleProvider).state;
  final updatedBubble = bubble.copyWith(
    updates: bubble.updates + 1,
    size: bubble.recalculateSize()
  );
  ref.read(singleBubbleProvider).state = updatedBubble;
});

final bubbleNotifierProvider = StateNotifierProvider.family<BubbleNotifier, Bubble, String>((ref, id) {
  return BubbleNotifier(id: id);
});

class BubbleNotifier extends StateNotifier<Bubble> {
  final String id;

  BubbleNotifier({required this.id}) : super(Bubble(id: id));
  
  void updateLabel(String newLabel) {
    state = state.copyWith(label: newLabel);
  }
  
  void updateColor(Color newColor) {
    state = state.copyWith(color: newColor);
  }
}


final mergingBubblesProvider = StateNotifierProvider<MergingBubblesNotifier, List<MergingBubble>>((ref) {
  return MergingBubblesNotifier();
});

class MergingBubblesNotifier extends StateNotifier<List<MergingBubble>> {
  MergingBubblesNotifier() : super([]);

  void mergeBubbles(Bubble bubble1, Bubble bubble2) {
    state = [...state, MergingBubble(bubble1: bubble1, bubble2: bubble2)];
  }

  void updateProgress(MergingBubble mergingBubble, double progress) {
    final index = state.indexOf(mergingBubble);
    if (index != -1) {
      final updatedMergingBubble = MergingBubble(
        bubble1: mergingBubble.bubble1,
        bubble2: mergingBubble.bubble2,
        progress: progress,
      );
      state = [
        ...state.sublist(0, index),
        updatedMergingBubble,
        ...state.sublist(index + 1),
      ];
    }
  }
}
