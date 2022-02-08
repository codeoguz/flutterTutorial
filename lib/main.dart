import 'package:codeoguz_tutorial/tuts/dynamic_listview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Tutorials());
}

class Tutorials extends StatelessWidget {
  const Tutorials({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DyanmicListView(),
    );
  }
}