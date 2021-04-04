import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:my_locations/data/helpers/location_helper.dart';

class LocationInput extends StatefulWidget {
  @override
  _LocationInputState createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  String _previewImageUrl;

  Future<void> _getCurrentUserLocation() async {
    final locationData = await Location().getLocation();
    final staticMapImageUrl = LocationHelper.generateLocationPreviewImage(
        longitude: locationData.longitude, latitude: locationData.latitude);
    setState(() {
      _previewImageUrl = staticMapImageUrl;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 170,
            width: double.infinity,
            alignment: Alignment.center,
            child: _previewImageUrl == null
                ? Text(
                    'No location choosen',
                    textAlign: TextAlign.center,
                  )
                : Image.network(
                    _previewImageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  onPressed: () {
                    _getCurrentUserLocation();
                  },
                  icon: Icon(Icons.location_on),
                  label: Text("Current location"),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.map),
                  label: Text("Select on map"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
