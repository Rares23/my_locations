import 'package:flutter/material.dart';
import 'package:my_locations/data/providers/places.dart';
import 'package:my_locations/screens/add_place_screen.dart';
import 'package:provider/provider.dart';

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
      body: Consumer<Places>(
        builder: (context, places, child) {
          if (places.places.isEmpty) {
            return child;
          } else {
            return ListView.builder(
                itemCount: places.places.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.file(places.places[index].image),
                    title: Text(places.places[index].title),
                  );
                });
          }
        },
        child: Center(
          child: Text('No places yet'),
        ),
      ),
    );
  }
}
