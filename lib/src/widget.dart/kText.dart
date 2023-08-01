import 'package:flutter/material.dart';
import 'package:news_app/src/configs.dart/appColors.dart';
import 'package:news_app/src/configs.dart/appConfigs.dart';

class KText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final int? maxLine;
  final TextOverflow? overflow;
  final double? wordSpacing;

  // ignore: use_key_in_widget_constructors
  const KText({
    required this.text,
    this.color,
    this.fontFamily,
    this.fontSize,
    this.fontWeight,
    this.maxLine,
    this.overflow,
    this.wordSpacing,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize != null ? fontSize : 14,
        fontFamily: fontFamily ?? regular,
        fontWeight: fontWeight,
        // ignore: prefer_if_null_operators
        color: color != null ? color : black,
        wordSpacing: wordSpacing,
      ),
      textAlign: TextAlign.justify,
      maxLines: maxLine,
    );
  }
}
