

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../example/ lib/main.dart';
import '../providers/bubble_interaction_provider.dart';

class BubbleLayout extends ConsumerWidget {
  const BubbleLayout({super.key});

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final bubbleList = watch(bubbleListProvider).state;
    return Stack(
      children: bubbleList.map((bubble) => BubbleButton(bubble)).toList(),
    );
  }
}
