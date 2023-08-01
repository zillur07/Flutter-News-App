import 'package:flutter/material.dart';
import 'package:news_app/src/widget.dart/kText.dart';

Widget listTile(
  void Function()? onTap,
  String text,
  IconData icon,
  IconData trailing,
) {
  return ListTile(
    onTap: onTap,
    leading: Icon(
      icon,
      color: Colors.black38,
      size: 25,
    ),
    title: KText(
      text: text,
      fontFamily: 'lato',
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    trailing: Icon(Icons.navigate_next),
  );
}
