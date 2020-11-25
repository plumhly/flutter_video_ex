
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  VideoWidget({Key key, this.url}) : super(key: key);

  final String url;

  @override
  _VideoWidgetState createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.network(widget.url,
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true))
      ..initialize();
    _controller.addListener(() {
      setState(() {});
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200,
          height: 100,
          child: VideoPlayer(_controller),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: FlatButton(
            child: Text("play"),
            onPressed: () {
              _controller.play();
            },
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    print("dispose");
    _controller.dispose();
    super.dispose();
  }
}
