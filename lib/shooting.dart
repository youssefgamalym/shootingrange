import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udp/udp.dart';

import 'main.dart';

class shootingRange extends StatefulWidget {
  const shootingRange({Key? key}) : super(key: key);

  @override
  _shootingRangeState createState() => _shootingRangeState();
}

class _shootingRangeState extends State<shootingRange> {
  // IP of target
  var DESTINATION_ADDRESS = InternetAddress("192.168.1.105");
  var portReceived = 4210;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: null,
            ),
            ListTile(
              leading: Icon(Icons.info_outline, color: Colors.blue),
              title: Text('about'),
              onTap: () {
                Navigator.pushNamed(context, '');
              },
            ),
            ListTile(
              leading: Icon(Icons.info_outline, color: Colors.blue),
              title: Text('about'),
              onTap: () {
                Navigator.pushNamed(context, 'home');
              },
            ),
          ],
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("image/background.jpg"), fit: BoxFit.cover)),
        // color: Colors.indigo,
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () async {
                          RawDatagramSocket.bind(InternetAddress.anyIPv4, 4210)
                              .then((RawDatagramSocket udpSocket) {
                            udpSocket.broadcastEnabled = true;
                            udpSocket.listen((e) {
                              Datagram? dg = udpSocket.receive();
                              if (dg != null) {
                                print("received ${dg.data}");
                              }
                            });
                            List<int> data = utf8.encode("1");
                            udpSocket.send(
                                data, DESTINATION_ADDRESS, portReceived);
                          });
                        },
                        child: Text('Shape1')),
                    ElevatedButton(
                        onPressed: () async {
                          RawDatagramSocket.bind(InternetAddress.anyIPv4, 4210)
                              .then((RawDatagramSocket udpSocket) {
                            udpSocket.broadcastEnabled = true;
                            udpSocket.listen((e) {
                              Datagram? dg = udpSocket.receive();
                              if (dg != null) {
                                print("received ${dg.data}");
                              }
                            });

                            List<int> data = utf8.encode('2');
                            udpSocket.send(
                                data, DESTINATION_ADDRESS, portReceived);
                          });
                        },
                        child: Text('Shape2'))
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () async {
                          RawDatagramSocket.bind(InternetAddress.anyIPv4, 4210)
                              .then((RawDatagramSocket udpSocket) {
                            udpSocket.broadcastEnabled = true;
                            udpSocket.listen((e) {
                              Datagram? dg = udpSocket.receive();
                              if (dg != null) {
                                print("received ${dg.data}");
                              }
                            });
                            List<int> data = utf8.encode('3');
                            udpSocket.send(
                                data, DESTINATION_ADDRESS, portReceived);
                          });
                        },
                        child: Text('Shape3')),
                    ElevatedButton(
                        onPressed: () async {
                          RawDatagramSocket.bind(InternetAddress.anyIPv4, 4210)
                              .then((RawDatagramSocket udpSocket) {
                            udpSocket.broadcastEnabled = true;
                            udpSocket.listen((e) {
                              Datagram? dg = udpSocket.receive();
                              if (dg != null) {
                                print("received ${dg.data}");
                              }
                            });

                            List<int> data = utf8.encode('4');
                            udpSocket.send(
                                data, DESTINATION_ADDRESS, portReceived);
                          });
                        },
                        child: Text('Shape4'))
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () async {
                          RawDatagramSocket.bind(InternetAddress.anyIPv4, 4210)
                              .then((RawDatagramSocket udpSocket) {
                            udpSocket.broadcastEnabled = true;
                            udpSocket.listen((e) {
                              Datagram? dg = udpSocket.receive();
                              if (dg != null) {
                                print("received ${dg.data}");
                              }
                            });
                            List<int> data = utf8.encode('5');
                            udpSocket.send(
                                data, DESTINATION_ADDRESS, portReceived);
                          });
                        },
                        child: Text('Shape5')),
                    ElevatedButton(
                        onPressed: () async {
                          RawDatagramSocket.bind(InternetAddress.anyIPv4, 4210)
                              .then((RawDatagramSocket udpSocket) {
                            udpSocket.broadcastEnabled = true;
                            udpSocket.listen((e) {
                              Datagram? dg = udpSocket.receive();
                              if (dg != null) {
                                print("received ${dg.data}");
                              }
                            });

                            List<int> data = utf8.encode('6');
                            udpSocket.send(
                                data, DESTINATION_ADDRESS, portReceived);
                          });
                        },
                        child: Text('Shape6'))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

var UDP = ElevatedButton(
    onPressed: () async {
      var DESTINATION_ADDRESS = InternetAddress("192.168.1.102");

      RawDatagramSocket.bind(InternetAddress.anyIPv4, 4210)
          .then((RawDatagramSocket udpSocket) {
        udpSocket.broadcastEnabled = true;
        udpSocket.listen((e) {
          Datagram? dg = udpSocket.receive();
          if (dg != null) {
            print("received ${dg.data}");
          }
        });
        List<int> data = utf8.encode('TEST1');
        udpSocket.send(data, DESTINATION_ADDRESS, 4023);
      });
    },
    child: Text('data2'));
