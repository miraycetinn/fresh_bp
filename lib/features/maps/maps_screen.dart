import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:freshh/features/plugins/flutter_map_zoom_buttons.dart';
import 'package:latlong2/latlong.dart';

class MapsScreen extends StatefulWidget {
  const MapsScreen({Key? key}) : super(key: key);

  @override
  State<MapsScreen> createState() => _MapsScreenState();
}

class _MapsScreenState extends State<MapsScreen> {
  Alignment selectedAlignment = Alignment.topCenter;
  bool counterRotate = false;

  static const alignments = {
    315: Alignment.topLeft,
    0: Alignment.topCenter,
    45: Alignment.topRight,
    270: Alignment.centerLeft,
    null: Alignment.center,
    90: Alignment.centerRight,
    225: Alignment.bottomLeft,
    180: Alignment.bottomCenter,
    135: Alignment.bottomRight,
  };

  late final customMarkers = <Marker>[
    buildPin(LatLng(51.51868093513547, -0.12835376940892318)),
    buildPin(LatLng(53.33360293799854, -6.284001062079881)),
  ];

  Marker buildPin(LatLng point) => Marker(
        point: point,
        width: 60,
        height: 60,
        builder: (BuildContext context) {
          return const Icon(Icons.location_pin, size: 60, color: Colors.black);
        },
      );

  TileLayer get openStreetMapTileLayer => TileLayer(
        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        userAgentPackageName: 'dev.fleaflet.flutter_map.example',
        // Use the recommended flutter_map_cancellable_tile_provider package to
        // support the cancellation of loading tiles.
        tileProvider: NetworkNoRetryTileProvider(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(51.5, -0.09),
          zoom: 5,
          onLongPress: (_, p) => setState(() => customMarkers.add(buildPin(p))),
        ),
        children: [
          openStreetMapTileLayer,
          MarkerLayer(
            markers: customMarkers,
            rotate: counterRotate,
            rotateAlignment: selectedAlignment,
          ),
          const FlutterMapZoomButtons(
            minZoom: 4,
            maxZoom: 19,
            mini: true,
            padding: 10,
            alignment: Alignment.bottomRight,
          ),
        ],
      ),
    );
  }
}
