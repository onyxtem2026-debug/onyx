import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ReelPlayer extends StatefulWidget {
  final String videoUrl;
  final String username;
  final String caption;

  const ReelPlayer({
    super.key,
    required this.videoUrl,
    required this.username,
    required this.caption,
  });

  @override
  State<ReelPlayer> createState() => _ReelPlayerState();
}

class _ReelPlayerState extends State<ReelPlayer> {
  late VideoPlayerController _controller;
  bool isLiked = false;
  bool isPlaying = true;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.videoUrl),
    )
      ..initialize().then((_) {
        setState(() {});
        _controller.setLooping(true);
        _controller.play();
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void togglePlay() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
        isPlaying = false;
      } else {
        _controller.play();
        isPlaying = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: togglePlay,
        onDoubleTap: () {
          setState(() {
            isLiked = !isLiked;
          });
        },
        child: Stack(
          fit: StackFit.expand,
          children: [

            if (_controller.value.isInitialized)
              FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _controller.value.size.width,
                  height: _controller.value.size.height,
                  child: VideoPlayer(_controller),
                ),
              ),

            if (!isPlaying)
              const Center(
                child: Icon(
                  Icons.play_circle_fill,
                  size: 90,
                  color: Colors.white70,
                ),
              ),

            Positioned(
              left: 18,
              bottom: 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "@${widget.username}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 8),

                  SizedBox(
                    width: 260,
                    child: Text(
                      widget.caption,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),

                ],
              ),
            ),

            Positioned(
              right: 15,
              bottom: 40,
              child: Column(
                children: [

                  const CircleAvatar(
                    radius: 26,
                    backgroundImage:
                        NetworkImage("https://i.pravatar.cc/300"),
                  ),

                  const SizedBox(height: 20),

                  IconButton(
                    onPressed: () {
                      setState(() {
                        isLiked = !isLiked;
                      });
                    },
                    icon: Icon(
                      isLiked
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color:
                          isLiked ? Colors.red : Colors.white,
                      size: 34,
                    ),
                  ),

                  const Text(
                    "18.4K",
                    style: TextStyle(color: Colors.white),
                  ),

                  const SizedBox(height: 15),

                  const Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.white,
                    size: 32,
                  ),

                  SizedBox(height: 4),

                  Text(
                    "1.3K",
                    style: TextStyle(color: Colors.white),
                  ),

                  SizedBox(height: 15),

                  Icon(
                    Icons.send,
                    color: Colors.white,
                    size: 32,
                  ),

                  SizedBox(height: 15),

                  Icon(
                    Icons.bookmark_border,
                    color: Colors.white,
                    size: 32,
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
