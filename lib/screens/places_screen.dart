import 'package:flutter/material.dart';
import 'package:my_locations/screens/add_place_screen.dart';

class PlacesScreen extends StatelessWidget {
  static const String route = '/';

  void _openAddPlaceScreen(BuildContext context) {
    Navigator.of(context).pushNamed(AddPlaceScreen.route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your places'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              _openAddPlaceScreen(context);
            },
          )
        ],
      ),
      body: Center(
        child: Container(),
      ),
    );
  }
}
