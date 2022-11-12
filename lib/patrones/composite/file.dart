import 'package:arquitectura_patrones/components/composite/file_size_convert.dart';
import 'package:flutter/material.dart';
import 'package:arquitectura_patrones/patrones/composite/composite.dart';

class File extends StatelessWidget implements IFile {
  final String title;
  final int size;
  final IconData icon;

  const File(
      {Key? key, required this.title, required this.size, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return render(context);
  }

  @override
  int getSize() {
    return size;
  }

  @override
  Widget render(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.pinkAccent,
        ),
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: Colors.pinkAccent),
        ),
        trailing: Text(
          FileSizeConvert.bytesToString(size),
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: Colors.blue),
        ),
        dense: true,
      ),
    );
  }
}
