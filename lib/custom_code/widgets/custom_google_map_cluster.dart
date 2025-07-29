// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart' as gmaps;
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:ui' as ui;

class CustomGoogleMapCluster extends StatefulWidget {
  const CustomGoogleMapCluster({
    Key? key,
    required this.ubicaciones,
    required this.initLocation,
  }) : super(key: key);

  final List ubicaciones; // List<UbicacionesRecord>
  final gmaps.LatLng initLocation;

  @override
  State<CustomGoogleMapCluster> createState() => _CustomGoogleMapClusterState();
}

class _CustomGoogleMapClusterState extends State<CustomGoogleMapCluster> {
  final Completer<gmaps.GoogleMapController> _controller = Completer();
  final Set<gmaps.Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    _loadMarkers();
  }

  Future<void> _loadMarkers() async {
    List<gmaps.Marker> markers = [];

    for (final doc in widget.ubicaciones) {
      final latlng = doc.coord;
      final markerUrl = doc.mapMarker; // URL de imagen

      if (latlng != null && markerUrl != null) {
        final markerIcon = await _getNetworkImageMarker(markerUrl);
        markers.add(
          gmaps.Marker(
            markerId: gmaps.MarkerId(doc.reference.id),
            position: gmaps.LatLng(latlng.latitude, latlng.longitude),
            icon: markerIcon,
            infoWindow: gmaps.InfoWindow(title: doc.nombre ?? 'Ubicación'),
          ),
        );
      }
    }

    setState(() {
      _markers.addAll(markers);
    });
  }

  Future<gmaps.BitmapDescriptor> _getNetworkImageMarker(String imageUrl) async {
    final response = await http.get(Uri.parse(imageUrl));
    final bytes = response.bodyBytes;
    final codec = await ui.instantiateImageCodec(bytes, targetHeight: 100);
    final frame = await codec.getNextFrame();
    final data = await frame.image.toByteData(format: ui.ImageByteFormat.png);
    return gmaps.BitmapDescriptor.fromBytes(data!.buffer.asUint8List());
  }

  @override
  Widget build(BuildContext context) {
    return gmaps.GoogleMap(
      initialCameraPosition: gmaps.CameraPosition(
        target: widget.initLocation,
        zoom: 12,
      ),
      markers: _markers,
      onMapCreated: (controller) => _controller.complete(controller),
    );
  }
}
