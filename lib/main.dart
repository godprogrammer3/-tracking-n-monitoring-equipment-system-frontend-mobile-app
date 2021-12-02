import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:permission_handler/permission_handler.dart';
import 'package:http/http.dart' as http;

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
      home: MyHomePage(title: 'Test Add Locker'),
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
  final TextEditingController _controller = TextEditingController();
  bool isHasData = false;
  String uid = '';
  List<Map<String, dynamic>> allLocker = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: allLocker.length == 0
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  isHasData
                      ? Column(children: [
                          Text('uid: $uid'),
                          SizedBox(
                            width: 200,
                            child: TextFormField(
                              controller: _controller,
                              decoration: InputDecoration(
                                  label: Text('Enter locker name')),
                            ),
                          ),
                        ])
                      : Text(
                          'Press the button on the corner to scan',
                        ),
                ],
              )
            : Column(
                children: [
                  Text('All Lockers from database'),
                  ListTile(
                    leading: Text('no.'),
                    title: Text('name'),
                    trailing: SizedBox(
                      width: 200,
                      child: Text('uid'),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: SizedBox(
                        height: 600,
                        child: ListView.builder(
                            itemCount: allLocker.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                leading: Text((index + 1).toString()),
                                title: Text(allLocker[index]['name']),
                                trailing: SizedBox(
                                  width: 200,
                                  child: Text(
                                    allLocker[index]['uid'],
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                  )
                ],
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (isHasData) {
            var client = http.Client();
            try {
              var url = Uri.parse(
                  'http://2bd6-202-176-120-215.ngrok.io/create_locker');
              await http
                  .post(url, body: {'name': _controller.text, 'uid': uid});
              url =
                  Uri.parse('http://2bd6-202-176-120-215.ngrok.io/all_locker');
              final response = await http.get(url);
              var decodedResponse =
                  jsonDecode(utf8.decode(response.bodyBytes)) as List<dynamic>;
              setState(() {
                allLocker = [];
                for (dynamic e in decodedResponse) {
                  final tmp = {
                    'name': e['name'] as String,
                    'uid': e['uid'] as String
                  };
                  allLocker.add(tmp);
                }
                print(allLocker);
              });
            } finally {
              client.close();
            }
          } else {
            await Permission.camera.request();
            String? cameraScanResult = await scanner.scan();
            if (cameraScanResult != null) {
              print('cameraScanResult: $cameraScanResult');
              setState(() {
                isHasData = true;
                uid = cameraScanResult;
              });
            } else {
              print('error');
            }
          }
        },
        tooltip: 'QR scan',
        child: Icon(isHasData ? Icons.add : Icons.qr_code),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
