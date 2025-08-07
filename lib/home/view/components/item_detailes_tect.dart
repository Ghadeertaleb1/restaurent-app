import 'package:flutter/material.dart';

class ItemDetailesText extends StatelessWidget {
  final Text textStyle;
  const ItemDetailesText({
    super.key,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: textStyle,
    );
  }
}
