import 'package:flutter/material.dart';
import 'package:my_locations/data/providers/places.dart';
import 'package:my_locations/screens/add_place_screen.dart';
import 'package:my_locations/screens/place_details_screen.dart';
import 'package:my_locations/screens/places_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Places(),
      child: MaterialApp(
          title: 'My Locations',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            accentColor: Colors.amber,
          ),
          home: PlacesScreen(),
          routes: {
            AddPlaceScreen.route: (context) => AddPlaceScreen(),
            PlaceDetailsScreen.route: (context) => PlaceDetailsScreen(),
          }),
    );
  }
}
