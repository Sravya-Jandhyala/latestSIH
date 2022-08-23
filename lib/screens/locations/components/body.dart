import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_popup/flutter_map_marker_popup.dart';
import 'package:latlong2/latlong.dart';
import 'ExamplePop.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<LatLng> _markerPositions = [];
  final PopupController _popupLayerController = PopupController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: MapOptions(
          zoom: 5.0,
          center: LatLng(16.517, 80.610),
          plugins: [],
        ),
        layers: [
          TileLayerOptions(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: ['a', 'b', 'c'],
          ),
          PopupMarkerLayerOptions(
            popupController: _popupLayerController,
            markers: _markers(context),
            markerRotateAlignment:
                PopupMarkerLayerOptions.rotationAlignmentFor(AnchorAlign.top),
            popupBuilder: (BuildContext context, Marker marker) =>
                ExamplePopup(marker, _markers(context).indexOf(marker)),
          ),
        ],
      ),
    );
  }

  List<Marker> _markers(BuildContext context) {
    //static points replace with the points from databse
    _markerPositions = [
      LatLng(16.469605, 80.740970),
      LatLng(16.486113, 80.663636),
      LatLng(16.439151, 80.744749)
    ];
    List<Marker> mp = [];
    for (int i = 0; i < _markerPositions.length; i++) {
      mp.add(Marker(
        point: _markerPositions[i],
        width: 40,
        height: 40,
        builder: (_) => IconButton(
          icon: const Icon(Icons.location_on, size: 40),
          onPressed: () {
            showContent(context, i);
          },
        ),
        anchorPos: AnchorPos.align(AnchorAlign.top),
      ));
    }
    return mp;
  }

  void showContent(context, int i) {
    final List<List<String>> objectProperties = [
      ['Ganguru', 'RBK'],
      ['Yanamalakuduru', 'RBK'],
      ['Gosala', 'RBK']
    ];
    showDialog(
        context: context,
        barrierDismissible: false, // user must tap button!

        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(objectProperties[i][0]),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text(objectProperties[i][1]),
                ],
              ),
            ),
            actions: [
              ElevatedButton(
                child: const Text('Get Location'),
                onPressed: () {
                  // Should change the static points to institute specific points
                  MapUtils.openMap(16.469605, 80.740970);
                },
              ),
              ElevatedButton(
                child: const Text('Close'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}

class MapUtils {
  MapUtils._();

  static Future<void> openMap(double latitude, double longitude) async {
    String googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not open the map.';
    }
  }
}
