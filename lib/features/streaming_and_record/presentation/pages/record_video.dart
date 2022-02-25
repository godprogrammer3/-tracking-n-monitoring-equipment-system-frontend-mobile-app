import 'package:flutter/material.dart';

class RecordVideoPage extends StatelessWidget {
  const RecordVideoPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ดูวิดีโอย้อนหลัง',
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
                    style: Theme.of(context).primaryTextTheme.caption,
                  ),
                  onTap: () {},
                ),
                const Divider(),
              ],
            );
          },
        ),
      ),
    );
  }
}
