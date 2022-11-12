import 'dart:math';

import 'package:arquitectura_patrones/patrones/composite/composite.dart';
import 'package:arquitectura_patrones/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CompositeScreen extends StatelessWidget {
  Widget buildMediaDirectory() {
    var musicDirectory = Directory(title: 'Musica');
    musicDirectory
        .addFile(AudioFile(title: 'Ojitos_chiquititos.mp3', size: 65234521));
    musicDirectory.addFile(AudioFile(title: 'Limbo.mp3', size: 54135874));
    musicDirectory.addFile(AudioFile(title: 'Sin_pijama.mp3', size: 84256874));

    var moviesDirectory = Directory(title: 'Peliculas');
    moviesDirectory.addFile(VideoFile(title: 'Matrix.mp4', size: 4533884363));
    moviesDirectory.addFile(VideoFile(title: 'Avatar.mkv', size: 6248783252));

    var catPicturesDirectory = Directory(title: 'Fotos de gatos');
    catPicturesDirectory.addFile(ImageFile(title: 'cat.png', size: 42356423));
    catPicturesDirectory.addFile(ImageFile(title: 'cat1.png', size: 69456423));
    catPicturesDirectory.addFile(ImageFile(title: 'cat2.png', size: 75456423));

    var picturesDirectory = Directory(
      title: 'Imagenes',
      isInitiallyExpanded: true,
    );
    picturesDirectory.addFile(musicDirectory);
    picturesDirectory.addFile(moviesDirectory);
    picturesDirectory.addFile(catPicturesDirectory);
    picturesDirectory.addFile(ImageFile(title: 'Maria.jpg', size: 63215642));
    picturesDirectory.addFile(ImageFile(title: 'Maria1.jpg', size: 45215642));

    return picturesDirectory;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustom(
        title: 'Composite',
        icon: Icons.arrow_back_ios_new,
      ),
      body: ScrollConfiguration(
        behavior: const ScrollBehavior(),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: buildMediaDirectory(),
        ),
      ),
    );
  }
}
