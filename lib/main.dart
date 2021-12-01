import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

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
      home: StreamBuilder<BluetoothState>(
          stream: FlutterBlue.instance.state,
          initialData: BluetoothState.unknown,
          builder: (c, snapshot) {
            final state = snapshot.data;
            if (state == BluetoothState.on) {
              return MyHomePage(
                  title: 'Control locker door via bluetooth test');
            }
            return BluetoothOffScreen(state: state);
          }),
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
  final FlutterBlue flutterBlue = FlutterBlue.instance;
  var _toggleRebuild;
  bool isLock = false;
  Future<BluetoothDevice?> getScannedDevices() async {
    BluetoothDevice? device;
    final subscription = flutterBlue.scanResults.listen((results) {
      for (ScanResult r in results) {
        if (r.device.name == 'toollo-locker') {
          FlutterBlue.instance.stopScan();
          device = r.device;
        }
      }
    });
    await FlutterBlue.instance.startScan(timeout: Duration(seconds: 5));
    subscription.cancel();
    return device;
  }

  Future<BluetoothCharacteristic> conectToDevice() async {
    final BluetoothDevice? scannedDevice = await getScannedDevices();
    if (scannedDevice != null) {
      await scannedDevice.connect();
      List<BluetoothService> services = await scannedDevice.discoverServices();
      for (BluetoothService service in services) {
        // print(service.uuid.toString());
        if (service.uuid.toString() == '0000dead-0000-1000-8000-00805f9b34fb') {
          for (BluetoothCharacteristic characteristic
              in service.characteristics) {
            // print(characteristic);
            if (characteristic.uuid.toString() ==
                '0000beef-0000-1000-8000-00805f9b34fb') {
              return characteristic;
            }
          }
        }
      }
    } else {
      final List<BluetoothDevice> connectedDevices =
          await flutterBlue.connectedDevices;
      BluetoothDevice? toolloLockerDevice;
      for (BluetoothDevice device in connectedDevices) {
        if (device.name == 'toollo-locker') {
          toolloLockerDevice = device;
          break;
        }
      }
      if (toolloLockerDevice != null) {
        List<BluetoothService> services =
            await toolloLockerDevice.discoverServices();
        for (BluetoothService service in services) {
          // print(service.uuid);
          if (service.uuid.toString() ==
              '0000dead-0000-1000-8000-00805f9b34fb') {
            for (BluetoothCharacteristic characteristic
                in service.characteristics) {
              // print(characteristic);
              if (characteristic.uuid.toString() ==
                  '0000beef-0000-1000-8000-00805f9b34fb') {
                return characteristic;
              }
            }
          }
        }
      }
    }
    throw Exception('DeviceNotFound');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        key: ValueKey(_toggleRebuild),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
                child: FutureBuilder(
              future: conectToDevice(),
              builder: (BuildContext context,
                  AsyncSnapshot<BluetoothCharacteristic> snapshot) {
                if (snapshot.hasData) {
                  final charecteristic = snapshot.data;
                  return FutureBuilder(
                      future: charecteristic?.read(),
                      builder: (context, AsyncSnapshot<List<int>> snapshot) {
                        if (snapshot.hasData) {
                          isLock = snapshot.data.toString() ==
                              [0x6f, 0x70, 0x65, 0x6e].toString();
                          if (isLock) {
                            return ElevatedButton.icon(
                                onPressed: () async {
                                  try {
                                    await charecteristic
                                        ?.write([0x63, 0x6c, 0x6f, 0x73, 0x65]);
                                    setState(() {
                                      setState(() {
                                        isLock = !isLock;
                                      });
                                    });
                                    print('finished');
                                  } catch (error) {
                                    print('error: $error');
                                  }
                                },
                                icon: Icon(Icons.lock),
                                label: Text('lock'));
                          } else {
                            return ElevatedButton.icon(
                                onPressed: () async {
                                  try {
                                    await charecteristic
                                        ?.write([0x6f, 0x70, 0x65, 0x6e]);
                                    setState(() {
                                      isLock = !isLock;
                                    });
                                    print('finished');
                                  } catch (error) {
                                    print('error: $error');
                                  }
                                },
                                icon: Icon(Icons.lock_open),
                                label: Text('unlock'));
                          }
                        } else {
                          return CircularProgressIndicator();
                        }
                      });
                } else if (snapshot.hasError) {
                  return ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _toggleRebuild = Object();
                        });
                      },
                      child: Text('Retry'));
                } else {
                  return CircularProgressIndicator();
                }
              },
            ))
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class BluetoothOffScreen extends StatelessWidget {
  final BluetoothState? state;
  const BluetoothOffScreen({Key? key, this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.bluetooth_disabled,
              size: 200.0,
              color: Colors.white54,
            ),
            Text(
              'Bluetooth Adapter is ${state != null ? state.toString().substring(15) : 'not available'}.',
              style: Theme.of(context)
                  .primaryTextTheme
                  .subtitle1
                  ?.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
