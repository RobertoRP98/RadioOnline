import 'package:flaudio/src/components/track_list_tile.dart';
import 'package:flaudio/src/providers/track_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrackList extends ConsumerWidget {
  const TrackList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tracks = ref.watch(trackListProvider);

    return ListView.builder(
      itemCount: tracks.length,
      itemBuilder: (context, index) {
        final track = tracks[index];

        return TrackListTile(track: track);
      },
    );
  }
}
