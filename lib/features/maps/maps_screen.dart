import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:freshh/main.dart';
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

  Marker buildPin(LatLng point) =>
      Marker(
        point: point,
        width: 60,
        height: 60, builder: (BuildContext context) {
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
    appBar: AppBar(title: const Text('Markers'), backgroundColor: HexColor("5C5EDD")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox.square(
                  dimension: 130,
                  child: GridView.builder(
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                    ),
                    itemCount: 9,
                    itemBuilder: (_, index) {
                      final deg = alignments.keys.elementAt(index);
                      final align = alignments.values.elementAt(index);

                      return IconButton(
                        onPressed: () =>
                            setState(() => selectedAlignment = align),
                        icon: Transform.rotate(
                          angle: deg == null ? 0 : deg * pi / 180,
                          child: Icon(
                            deg == null ? Icons.circle : Icons.arrow_upward,
                            color: selectedAlignment == align
                                ? Colors.green
                                : null,
                            size: deg == null ? 16 : null,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Tap the map to add markers!'),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Text('Counter-rotation'),
                        const SizedBox(width: 10),
                        Switch.adaptive(
                          value: counterRotate,
                          onChanged: (v) => setState(() => counterRotate = v),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Flexible(
            child: FlutterMap(
              options: MapOptions(
                  center: LatLng(51.5, -0.09),
                  zoom: 5,
                  onTap: (_, p) =>
                      setState(() => customMarkers.add(buildPin(p))),
                  interactiveFlags: InteractiveFlag.doubleTapZoom
              ),
              children: [
                openStreetMapTileLayer,
                MarkerLayer(
                  rotate: counterRotate,
                  markers: [
                    Marker(
                      point: LatLng(47.18664724067855, -1.5436768515939427),
                      width: 64,
                      height: 64,
                      rotateAlignment: Alignment.centerLeft,
                      builder: (BuildContext context) {
                        return  ColoredBox(
                          color: HexColor("738AE6"),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text('-->'),
                          ),
                        );
                      },
                    ),
                    Marker(
                      point: LatLng(47.18664724067855, -1.5436768515939427),
                      width: 64,
                      height: 64,
                      rotateAlignment: Alignment.centerRight,
                      builder: (BuildContext context) {
                        return const ColoredBox(
                          color: Colors.white38,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('<--'),
                          ),
                        );
                      },
                    ),
                    Marker(
                      point: LatLng(47.18664724067855, -1.5436768515939427),
                      rotate: false, builder: (BuildContext context) {
                      return const ColoredBox(color: Colors.black);
                    },
                    ),
                  ],
                ),
                MarkerLayer(
                  markers: customMarkers,
                  rotate: counterRotate,
                  rotateAlignment: selectedAlignment,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
