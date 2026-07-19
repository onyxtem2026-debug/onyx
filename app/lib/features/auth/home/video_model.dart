import 'package:video_player/video_player.dart';

class VideoPlayerService {
  VideoPlayerController? _controller;

  VideoPlayerController? get controller => _controller;

  Future<void> initialize(String videoUrl) async {
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(videoUrl),
    );

    await _controller!.initialize();
    _controller!
      ..setLooping(true)
      ..play();
  }

  Future<void> dispose() async {
    await _controller?.dispose();
    _controller = null;
  }
}
