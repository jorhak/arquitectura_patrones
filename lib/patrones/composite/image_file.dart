import 'package:arquitectura_patrones/patrones/composite/composite.dart';
import 'package:flutter/material.dart';

class ImageFile extends File {
  ImageFile({required String title, required int size})
      : super(title: title, size: size, icon: Icons.image_sharp);
}
