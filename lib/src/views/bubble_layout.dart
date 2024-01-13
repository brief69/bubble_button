


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../main.dart';
import '../providers/bubble_interaction_provider.dart';

class BubbleLayout extends ConsumerWidget {
  const BubbleLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef  ref) {
    final bubbleList = ref.watch(bubbleListProvider);
    return Stack(
      children: bubbleList.map((bubble) => BubbleButton(bubble as String)).toList(),
    );
  }
}
