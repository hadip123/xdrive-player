import 'package:flutter/material.dart';

class XDriveApp extends StatefulWidget {
  const XDriveApp({super.key});

  @override
  State<XDriveApp> createState() => _XDriveAppState();
}

class _XDriveAppState extends State<XDriveApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LibraryPage()); 
  }
}
