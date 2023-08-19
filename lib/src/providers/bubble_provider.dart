

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/bubble.dart';

final bubbleProvider = StateProvider<Bubble>((ref) => Bubble(
    id: '1', size: 50.0, color: Colors.blue, label: 'Default Bubble'));

final bubbleUpdateProvider = Provider<void>((ref) {
  final bubble = ref.read(bubbleProvider).state;
  bubble.updates++; // 更新の数を増やす
  bubble.recalculateSize(); // サイズを再計算
});

