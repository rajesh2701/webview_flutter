import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vimeodemo/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vimoe Player'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                child: const Text('Video 1'),
                onPressed: () {
                  Get.to(() => const VimeoPlayer(
                      videoID: 'https://vimeo.com/398173559/51281bcb9f'));
                }),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                child: const Text('Video 2'),
                onPressed: () {
                  Get.to(() => const VimeoPlayer(
                      videoID: 'https://vimeo.com/435099583/78d153aa04'));
                })
          ],
        ),
      ),
    );
  }
}
