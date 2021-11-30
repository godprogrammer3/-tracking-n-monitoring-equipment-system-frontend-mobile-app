import 'dart:convert';
import 'dart:ffi';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:socket_io_client/socket_io_client.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter test new release',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Streaming from Locker Test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isLiving = false;
  IO.Socket socket = IO.io('http://10.0.2.2:3000/locker',
      OptionBuilder().setTransports(['websocket']).build());
  Uint8List? bytesImage;
  Uint8List? bytesImage2;
  Uint8List? bytesImage3;
  Uint8List? bytesImage4;
  Widget? cacheImage;
  bool isFirstTime = true;
  @override
  void initState() {
    super.initState();
    this.socket.onConnect((_) {
      print('connected');
    });
    this.socket.on('live', this.liveHandler);
    this.socket.onDisconnect((_) => print('disconnected'));
  }

  void onToggleLive() {
    if (this.isLiving) {
      this.setState(() {
        this.isLiving = false;
      });
      this.socket.disconnect();
    } else {
      if (this.socket.disconnected) {
        this.socket.connect();
      }
      this.setState(() {
        this.isLiving = true;
      });
      this.socket.emit(
          'join', {'room': '2b5d9627-7187-485e-b245-95787089ff0d/camera/0'});
      this.socket.emit('start_live',
          {"lockerUid": "2b5d9627-7187-485e-b245-95787089ff0d", "camera": 0});
    }
  }

  void liveHandler(dynamic data) {
    // print(data);
    setState(() {
      if (data['camera'] == 0) {
        this.bytesImage = base64Decode(data['picture']);
      } else if (data['camera'] == 1) {
        this.bytesImage2 = base64Decode(data['picture']);
      } else if (data['camera'] == 2) {
        this.bytesImage3 = base64Decode(data['picture']);
      } else {
        this.bytesImage4 = base64Decode(data['picture']);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              (this.bytesImage != null)
                  ? Expanded(
                      child: Image(
                          fit: BoxFit.cover,
                          image: MemoryImage(this.bytesImage as Uint8List),
                          gaplessPlayback: true),
                    )
                  : Text('No data.'),
            ],
          ),
          ElevatedButton(
              onPressed: this.onToggleLive,
              child: Text(isLiving ? 'stop live' : 'start live')),
        ]),
      ),
    );
  }
}
