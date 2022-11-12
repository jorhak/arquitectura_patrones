import 'package:arquitectura_patrones/patrones/composite/composite.dart';
import 'package:flutter/material.dart';

class AudioFile extends File {
  AudioFile({required String title, required int size})
      : super(title: title, size: size, icon: Icons.audiotrack);
}
