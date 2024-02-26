import 'package:flutter/material.dart';
import 'package:xdrive/pages/library_page.dart';

class XDriveApp extends StatefulWidget {
  const XDriveApp({super.key});

  @override
  State<XDriveApp> createState() => _XDriveAppState();
}

class _XDriveAppState extends State<XDriveApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(colorScheme: const ColorScheme.dark()),
        home: const LibraryPage());
  }
}
