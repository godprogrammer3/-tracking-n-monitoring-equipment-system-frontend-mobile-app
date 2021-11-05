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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  IO.Socket socket = IO.io('http://10.0.2.2:3000',
      OptionBuilder().setTransports(['websocket']).build());
  Uint8List? bytesImage;
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
      this.socket.emit('stop-live');
    } else {
      this.setState(() {
        this.isLiving = true;
      });
      this.socket.emit('start-live');
    }
  }

  void liveHandler(dynamic data) {
    print('live');
    setState(() {
      this.bytesImage = base64Decode(data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            (this.bytesImage != null)
                ? Image(
                    image: MemoryImage(this.bytesImage as Uint8List),
                    gaplessPlayback: true)
                : Text('No data.'),
            ElevatedButton(
                onPressed: this.onToggleLive,
                child: Text(isLiving ? 'stop live' : 'start live'))
          ],
        ),
      ),
    );
  }
}
