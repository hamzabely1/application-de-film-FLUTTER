import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

//Film: qui contient des données sur une photo

class Film {
  final int id;
  final String title;
  final String image;
  final String description;
  final String date;
  const Film({
    required this.id,
    required this.title,
    required this.image,
    required this.description,
    // ignore: non_constant_identifier_names
    required this.date,
  });

  factory Film.fromJson(Map<String, dynamic> json) {
    return Film(
      id: json['id'] as int,
      title: json['title'] as String,
      image: json["poster_path"] as String,
      description: json["overview"] as String,
      date: json["release_date"] as String,
    );
  }
}