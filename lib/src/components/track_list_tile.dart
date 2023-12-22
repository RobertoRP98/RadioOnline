import 'package:flaudio/src/models/track.dart';
import 'package:flaudio/src/screens/track_detail_screen.dart';
import 'package:flutter/material.dart';

class TrackListTile extends StatelessWidget {
  final Track track;
  const TrackListTile({super.key, required this.track});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(track.title),
        subtitle: Text(track.artist),
        leading: Image.network(
          track.imageUrl,
          fit: BoxFit.cover,
          width: 40,
          height: 40,
        ),
        trailing: Icon(Icons.chevron_right),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => TrackDetailScreen(track: track),
            ),
          );
        },
      ),
    );
  }
}
