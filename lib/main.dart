//import 'package:flaudio/src/components/playback_bottom_bar.dart';
import 'package:flaudio/src/screens/track_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:flaudio/src/providers/track_list_provider.dart';

Future<void> main() async {
  await JustAudioBackground.init(
    androidNotificationChannelId: 'com.ryanheise.bg_demo.channel.audio',
    androidNotificationChannelName: 'Audio playback',
    androidNotificationOngoing: true,
  );

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Consumer(
        builder: (context, ref, _) {
          final trackList = ref.watch(trackListProvider);
          if (trackList.isNotEmpty) {
            final track = trackList.first;
            return TrackDetailScreen(track: track); // Paso del objeto Track al TrackDetailScreen
          } else {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
      builder: (context, child) {
        return Material(
          child: Column(
            children: [
              Expanded(child: child!),
              //PlaybackBottomBar(),
            ],
          ),
        );
      },
    );
  }
}
