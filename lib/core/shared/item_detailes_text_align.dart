import 'package:flutter/material.dart';

class ItemDetailesTextAlign extends StatelessWidget {
  final Text text;
  const ItemDetailesTextAlign({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: text,
    );
  }
}
