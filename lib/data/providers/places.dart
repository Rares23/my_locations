import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:my_locations/data/models/place.dart';

class Places with ChangeNotifier {
  List<Place> _places = [];

  List<Place> get places {
    return [..._places];
  }

  void addPlace(String title, File image) {
    final newPlace = Place(
      id: DateTime.now().toString(),
      image: image,
      title: title,
      location: null,
    );

    _places.add(newPlace);
    notifyListeners();
  }
}
