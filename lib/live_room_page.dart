import 'package:flutter/material.dart';

class LiveRoomPage extends StatefulWidget {
  const LiveRoomPage({super.key});

  @override
  State<LiveRoomPage> createState() => _LiveRoomPageState();
}

class _LiveRoomPageState extends State<LiveRoomPage> {
  // 9 seats → index 0 = Host
  List<bool> seats = List.generate(9, (_) => false);

  @override
  void initState() {
    super.initState();
    seats[0] = true; // Host always present
  }

  void join() {
    for (int i = 1; i < seats.length; i++) {
      if (!seats[i]) {
        setState(() => seats[i] = true);
        break;
      }
    }
  }

  void leave() {
    for (int i = seats.length - 1; i >= 1; i--) {
      if (seats[i]) {
        setState(() => seats[i] = false);
        break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Live Room Test")),
      body: Column(
        children: [
          const SizedBox(height: 20),

          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: List.generate(
              seats.length,
              (i) => CircleAvatar(
                radius: 30,
                backgroundColor: seats[i] ? Colors.green : Colors.grey,
                child: Text(i == 0 ? "Host" : "Seat $i"),
              ),
            ),
          ),

          const SizedBox(height: 40),

          ElevatedButton(
            onPressed: join,
            child: const Text("Join"),
          ),
          ElevatedButton(
            onPressed: leave,
            child: const Text("Leave"),
          ),
        ],
      ),
    );
  }
}
