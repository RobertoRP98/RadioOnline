import 'package:flaudio/src/components/track_play_button.dart';
import 'package:flaudio/src/models/track.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrackDetailScreen extends ConsumerWidget {
  final Track track;
  const TrackDetailScreen({super.key, required this.track});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio en vivo"),
      ),
      body: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Image.network(
                track.imageUrl,
                width: 400,
                height: 400,
                fit: BoxFit.fitWidth,
              ),
              TrackPlayButton(track: track),
            ],
          )),
    );
  }
}
