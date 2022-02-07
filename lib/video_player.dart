import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class VimeoPlayer extends StatelessWidget {
  final String videoID;
  const VimeoPlayer({Key? key, required this.videoID}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Player'),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      children: [Text('Video ID: $videoID'), _vimeoPlayer()],
    );
  }

  Widget _vimeoPlayer() {
    return HtmlWidget(
      '''<iframe
                  id="video-iframe"
                  src="https://player.vimeo.com/video/508314300?h=ae66f20e19"
                  webkitallowfullscreen=""
                  mozallowfullscreen=""
                  allowfullscreen="true"
                  frameborder="0">
               </iframe>''',
    );
  }
}
