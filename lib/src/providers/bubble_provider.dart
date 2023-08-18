

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'bubble.dart';

final bubbleProvider = StateProvider<Bubble>((ref) => Bubble(
    id: '1', size: 50.0, color: Colors.blue, label: 'Default Bubble'));
