import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  final String text1;
  final String text2;
  final TextStyle textStyle1;
  final TextStyle textStyle2;
  const RichTextWidget({
    super.key,
    required this.text1,
    required this.text2,
    required this.textStyle1,
    required this.textStyle2,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: text1, style: textStyle1),
          TextSpan(
            text: text2,
            style: textStyle2,
          ),
        ],
      ),
    );
  }
}
