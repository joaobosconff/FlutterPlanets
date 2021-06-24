

import 'dart:convert';

import 'package:http/http.dart' as http;

class Planet {
   final String id;
   final String name;
   final String location;
   final String distance;
   final String gravity;
   final String description;
   final String image;
 
  const Planet({required this.id, required this.name, required this.location, required this.distance, required this.gravity,
    required this.description, required this.image});
    

    factory Planet.fromJson(Map<String, dynamic> json) {
    return Planet(
      id: "",
      name: json['planetName'],
      location : "",
      distance : json['velocity1'].toString(),
      gravity : json['velocity2'].toString(),
      description: json['planetSubtitle'],
      image : json['planetImage']
    );
    
  }
}

Future<List<Planet>> fetchPlanets() async {
  var response = await http.get(Uri.parse('http://localhost:8080/planet'));

  if (response.statusCode == 200) {
    List<Planet> list = [];
    List<dynamic> planets = jsonDecode(response.body)['_embedded']['planet'];

    
    for (var i = 0; i < planets.length; i++) {
      print(i);
      list.add(Planet.fromJson(planets[i]));
    }
    print("terminou for");
    return list;
  } else {
    throw Exception('Failed to load planets');
  }
}




