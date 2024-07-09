import "package:flutter/material.dart";
import "package:flutter_map/flutter_map.dart";
import 'package:latlong2/latlong.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        body: Stack(
          children: [
            FlutterMap(
              options: MapOptions(
                initialCenter: LatLng(51.509364, -0.128928),
                initialZoom: 3.2,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.pinpoint.mobile',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}