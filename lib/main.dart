import 'package:flutter/material.dart';
import 'live_room_page.dart';

void main() {
  runApp(const RosaLive());
}

class RosaLive extends StatelessWidget {
  const RosaLive({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LiveRoomPage(),
    );
  }
}
