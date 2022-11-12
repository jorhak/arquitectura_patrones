import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PlatformButton extends StatelessWidget {
  final String text;
  final Color materialColor;
  final Color materialTextColor;
  final VoidCallback? onPressed;
  const PlatformButton(
      {Key? key,
      required this.text,
      required this.materialColor,
      required this.materialTextColor,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: kIsWeb || Platform.isAndroid
          ? MaterialButton(
              onPressed: onPressed,
              color: materialColor,
              textColor: materialTextColor,
              disabledColor: Colors.grey[800],
              disabledTextColor: Colors.white,
              child: Text(
                text,
                textAlign: TextAlign.center,
              ),
            )
          : CupertinoButton(
              onPressed: onPressed,
              color: Colors.black38,
              child: Text(
                text,
                textAlign: TextAlign.center,
              ),
            ),
    );
  }
}
