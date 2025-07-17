import 'package:ctc_calculator/src/widgets/bullets_point.dart';
import 'package:flutter/material.dart';

class BulletList extends StatelessWidget {
  final List<String> items;
  final double? fontSize;
  final Color? textColor;
  final Color? bulletColor;
  final TextStyle? textStyle;
  final String bulletSymbol;
  final EdgeInsetsGeometry? itemPadding;

  const BulletList({
    super.key,
    required this.items,
    this.fontSize = 16,
    this.textColor,
    this.bulletColor,
    this.textStyle,
    this.bulletSymbol = "•",
    this.itemPadding = const EdgeInsets.only(bottom: 6),
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map(
            (item) => BulletPoint(
              text: item,
              fontSize: fontSize,
              textColor: textColor,
              bulletColor: bulletColor,
              bulletSymbol: bulletSymbol,
              padding: itemPadding,
            ),
          )
          .toList(),
    );
  }
}
