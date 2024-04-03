import 'package:flaudio/src/models/track.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrackListProvider extends StateNotifier<List<Track>> {
  TrackListProvider() : super([]) {
    init();
  }

  init() {
    state = [
      Track(
        id: "RADIO ONLINE",
        title: '',
        artist: '',
        audioUrl: "https://radio.golsystems.com.mx/8202/stream",
        imageUrl: "https://www.grupovx.com/src/logo-vx.png",
      ),
    ];
  }
}

final trackListProvider = StateNotifierProvider<TrackListProvider, List<Track>>((ref) {
  return TrackListProvider();
});
