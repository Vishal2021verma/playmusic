import 'package:flutter/material.dart';

class PlayerView extends StatefulWidget {
  const PlayerView({super.key});

  @override
  State<PlayerView> createState() => _PlayerViewState();
}

class _PlayerViewState extends State<PlayerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Hero(
          tag: 'hero-tag',
          child: Container(
            color: Colors.blue,
            width: 200.0,
            height: 200.0,
          ),
        ));
  }
}
