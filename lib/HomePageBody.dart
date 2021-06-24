import 'package:flutter/material.dart';

import 'Planet.dart';
import 'PlanetRow.dart';


class HomePageBody extends StatelessWidget {

Future<List<Planet>> futurePlanet = fetchPlanets();


Widget build(BuildContext context) {
  return new Expanded(
    child: FutureBuilder<List<Planet>>(
      future: futurePlanet,
      builder: (context, snapshot) {
        
        List<Planet> planets = snapshot.data ?? [];
        print(planets.length);
        return ListView.builder(
          itemBuilder : (context, index) => new PlanetRow(planets[index]),
          itemCount: planets.length,
          padding: new EdgeInsets.symmetric(vertical: 16.0)
        );
      },
    ),
  );
}


 }