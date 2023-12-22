import 'package:flaudio/src/models/track.dart';
import 'package:flaudio/src/providers/playback_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrackPlayButton extends ConsumerWidget {
  final Track track;
  const TrackPlayButton({
    super.key,
    required this.track,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read(playbackProvider.notifier);
    final currentTrack = ref.watch(playbackProvider);

    final isCurrentTrack = currentTrack?.id == track.id;

    return ValueListenableBuilder(
      valueListenable: provider.isPlayingNotifier,
      builder: (context, isPlaying, _) {
        return IconButton(
          onPressed: () {
            if (isCurrentTrack) {
              if (isPlaying) {
                provider.player.pause();
              } else {
                provider.player.play();
              }
            } else {
              provider.load(track);
              provider.player.play();
            }
          },
          icon: Icon(
            isCurrentTrack && isPlaying ? Icons.pause : Icons.play_arrow,
            size: 38,
          ),
        );
      },
    );
  }
}
