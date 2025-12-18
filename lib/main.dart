import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rosa Live',
      home: const LiveRoomPage(),
    );
  }
}

class LiveRoomPage extends StatelessWidget {
  const LiveRoomPage({super.key});

  // 🔴 ZEGOCLOUD INFO (CHANGE THIS)
  final int appID = 123456789; // 👉 your Zego AppID
  final String appSign = 'YOUR_APP_SIGN_HERE';

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltLiveStreaming(
      appID: appID,
      appSign: appSign,
      userID: 'user_${DateTime.now().millisecondsSinceEpoch}',
      userName: 'Guest',
      liveID: 'rosalive_room_1',
      config: ZegoUIKitPrebuiltLiveStreamingConfig.host(),
    );
  }
}
