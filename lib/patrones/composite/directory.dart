import 'package:arquitectura_patrones/components/composite/file_size_convert.dart';
import 'package:arquitectura_patrones/patrones/composite/composite.dart';
import 'package:flutter/material.dart';

class Directory extends StatelessWidget implements IFile {
  final String title;
  final bool isInitiallyExpanded;
  final List<IFile> files = <IFile>[];

  Directory({
    Key? key,
    required this.title,
    this.isInitiallyExpanded = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return render(context);
  }

  void addFile(IFile file) {
    files.add(file);
  }

  @override
  int getSize() {
    int sum = 0;
    files.forEach((IFile file) => sum += file.getSize());
    return sum;
  }

  @override
  Widget render(BuildContext context) {
    return Theme(
      data: ThemeData(
          colorScheme:
              ColorScheme.fromSwatch().copyWith(primary: Colors.green)),
      child: Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: ExpansionTile(
          title: Text("$title (${FileSizeConvert.bytesToString(getSize())})"),
          leading: Icon(Icons.folder),
          children: files.map((IFile file) => file.render(context)).toList(),
          initiallyExpanded: isInitiallyExpanded,
        ),
      ),
    );
  }
}
