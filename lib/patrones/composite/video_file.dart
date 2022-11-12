import 'package:arquitectura_patrones/patrones/composite/composite.dart';
import 'package:flutter/material.dart';

class VideoFile extends File {
  VideoFile({required String title, required int size})
      : super(title: title, size: size, icon: Icons.movie_sharp);
}
