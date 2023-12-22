import 'package:flaudio/src/models/track.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrackListProvider extends StateNotifier<List<Track>> {
  TrackListProvider() : super([]) {
    init();
  }

  init() {
    state = [
      Track(
        id: "track1",
        title: "Track 1",
        artist: "Artist 1",
        audioUrl: "https://api.bitpack.app/asset/surf/audio/f2bc2b09-35f3-41d9-9072-80830e0ba14f.mp3",
        imageUrl: "https://api.bitpack.app/asset/surf/image/a52c9ae7-11b5-4416-8905-8aabc01fb337.jpg",
      ),
      Track(
        id: "track2",
        title: "Track 2",
        artist: "Artist 2",
        audioUrl: "https://api.bitpack.app/asset/surf/audio/2f672a5f-3157-4c3d-9083-1f51ca7a6648.mp3",
        imageUrl: "https://api.bitpack.app/asset/surf/image/22f8c379-7c95-41d5-a4d6-4e6a12f9d1b6.jpg",
      ),
      Track(
        id: "track3",
        title: "Track 3",
        artist: "Artist 3",
        audioUrl: "https://api.bitpack.app/asset/surf/audio/8f6fbe10-3d1f-41a6-9174-1cbfd9c1a3fd.mp3",
        imageUrl: "https://api.bitpack.app/asset/surf/image/a9532b62-06dd-4dd1-9775-da44d646e5c3.jpg",
      ),
      Track(
        id: "track4",
        title: "Track 4",
        artist: "Artist 4",
        audioUrl: "https://api.bitpack.app/asset/surf/audio/f3fbbc3c-fdef-4163-9168-83fec91ae0fe.mp3",
        imageUrl: "https://api.bitpack.app/asset/surf/image/4bb19eb1-e726-414c-9110-22e7cf9f536e.jpg",
      ),
      Track(
        id: "track5",
        title: "Track 5",
        artist: "Artist 5",
        audioUrl: "https://api.bitpack.app/asset/surf/audio/4d2db03a-5dbe-46e2-8b5c-90948b1dea1c.mp3",
        imageUrl: "https://api.bitpack.app/asset/surf/image/0bb2bcca-95f0-4e6b-b7de-f4b1a9c0f05d.jpg",
      )
    ];
  }
}

final trackListProvider = StateNotifierProvider<TrackListProvider, List<Track>>((ref) {
  return TrackListProvider();
});
