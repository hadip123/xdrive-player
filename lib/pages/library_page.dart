
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:xdrive/components/bubbles_scaffold.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(body: SafeArea(child: buildPage(context)));
  }

  Widget buildPage(BuildContext context) {
    return BubbleScaffold(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
              children: [
                  buildAppBar(context),
              ]
          ),
        )
    );
  }

  Widget buildAppBar(BuildContext context) {
      return Row(children: [buildMenuButton(), SizedBox(width: 10), ]);
  }

  Widget buildMenuButton() {
    return InkWell(
    onTap: () {},
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10), 
      child: BackdropFilter(
      filter: ImageFilter.blur(sigmaY: 100, sigmaX: 100),
        child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
        child: Icon(Icons.menu)),
      ),
    ));
  }
}

