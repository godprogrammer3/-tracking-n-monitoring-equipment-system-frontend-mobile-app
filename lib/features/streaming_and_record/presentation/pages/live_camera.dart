import 'package:flutter/material.dart';

class LiveCameraPage extends StatelessWidget {
  final String title;

  const LiveCameraPage({Key? key, this.title = 'กล้อง 1'}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: Theme.of(context).primaryTextTheme.headline1,
        ),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          screenSize.width * 0.05,
          20,
          screenSize.width * 0.05,
          20,
        ),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/streaming_and_record/camera_live_image.png',
                    fit: BoxFit.fill,
                    width: double.maxFinite,
                    height: double.maxFinite,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                      icon: const Icon(Icons.crop_free),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('วิดีโอย้อนหลัง'),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            ListTile(
                              leading: SizedBox(
                                width: 40,
                                height: 40,
                                child: Stack(
                                  children: [
                                    Image.asset(
                                      'assets/images/streaming_and_record/file_video_image.png',
                                      width: 40,
                                      height: 40,
                                      fit: BoxFit.fill,
                                    ),
                                    const Align(
                                      child: Icon(
                                        Icons.play_arrow,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              title: const Text('Video 2021-08-31 131805.mp4'),
                              subtitle: Text(
                                '7/7/2021 02:59 น.',
                                style:
                                    Theme.of(context).primaryTextTheme.caption,
                              ),
                              onTap: () {},
                            ),
                            const Divider(),
                          ],
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
