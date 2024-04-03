import 'package:flaudio/src/models/track.dart';
import 'package:flaudio/src/providers/playback_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrackProgressBar extends ConsumerWidget {
  final Track track;
  const TrackProgressBar({
    super.key,
    required this.track,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read(playbackProvider.notifier);

    final currentTrack = ref.watch(playbackProvider);

    if (currentTrack?.id != track.id) {
      return SizedBox.shrink();
    }

    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {
              Duration newPosition = provider.player.position - Duration(seconds: 10);
              if (newPosition.isNegative) {
                newPosition = Duration.zero;
              }
              provider.player.seek(newPosition);
            },
            icon: Icon(
              Icons.replay_10,
              size: 32,
            ),
          ),
        ),
        
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {
              provider.player.seek(provider.player.position + Duration(seconds: 10));
            },
            icon: Icon(
              Icons.forward_10,
              size: 32,
            ),
          ),
        ),
      ],
    );
  }
}
