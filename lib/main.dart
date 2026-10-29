import 'package:flutter/material.dart';

import 'view.dart';

void main() {
  runApp(const JournalApp());
}

class JournalApp extends StatelessWidget {
  const JournalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'つぶやき表示',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.blue)),
      home: const JournalPage(),
    );
  }
}
