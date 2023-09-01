

import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/bubble.dart';


class EditBubbleWidget extends ConsumerWidget {
  final Bubble bubble;
  final TextEditingController _labelController;

  EditBubbleWidget(this.bubble, {Key? key})
      : _labelController = TextEditingController(text: bubble.label),
        super(key: key);

  get bubbleProvider => null;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentBubble =ref.watch(bubbleProvider);

    return Column(
      children: [
        // ラベルの編集
        TextField(
          controller: _labelController,
          onChanged: (value) {
            ref.read(bubbleProvider).state.label = value;
          },
        ),
        // 色の編集
        ElevatedButton(
          onPressed: () async {
            Color? newColor = await _showColorPicker(context, currentBubble.color);
            if (newColor != null) {
              ref.read(bubbleProvider).state.color = newColor;
            }
          },
          child: const Text("色を変更"),
        ),
      ],
    );
  }

  Future<Color?> _showColorPicker(BuildContext context, Color initialColor) async {
    return showDialog<Color>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor: initialColor,
              onColorChanged: (color) => Navigator.of(context).pop(color),
            ),
          ),
        );
      },
    );
  }
}
