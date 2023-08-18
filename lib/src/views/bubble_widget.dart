

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:bubble_button/src/models/bubble.dart';
import 'package:bubble_button/src/providers/bubble_provider.dart';

class BubbleButton extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final bubble = watch(bubbleProvider).state;
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(bubble.color),
        minimumSize: MaterialStateProperty.all(Size(bubble.size, bubble.size)),
      ),
      onPressed: () {},
      child: Text(bubble.label),
    );
  }
}

// TODO: 23.08.18.途中で終わったから、ここから再開する。