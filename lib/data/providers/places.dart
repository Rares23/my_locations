import 'package:flutter/cupertino.dart';
import 'package:my_locations/data/models/place.dart';

class Places with ChangeNotifier {
  List<Place> _places = [];

  List<Place> get places {
    return [..._places];
  }
}
