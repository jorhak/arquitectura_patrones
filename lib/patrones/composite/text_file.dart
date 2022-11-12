import 'package:flutter/material.dart';
import 'package:arquitectura_patrones/patrones/composite/composite.dart';

class TextFile extends File {
  TextFile({required String title, required int size})
      : super(title: title, size: size, icon: Icons.textsms_sharp);
}
