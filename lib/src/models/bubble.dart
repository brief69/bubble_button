

import 'dart:ui';

class Bubble {
  final String id;
  double size;
  final Color color;
  final String label;
  int updates; // 更新の数

  Bubble({
    required this.id,
    this.size = 50.0,
    required this.color,
    required this.label,
    this.updates = 0,
  });

  get state => null;
}

