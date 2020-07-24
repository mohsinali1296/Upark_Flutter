import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: "assets/images/slide_image1.svg",
    title: 'Lorem ipsum doloasr sit amet consectetur adipiscing.',
    description: 'Lorem ipsum doloasr sit amet consectetur adipiscing.',
  ),
  Slide(
    imageUrl: "assets/images/slide_image2.svg",
    title: 'Lorem ipsum doloasr sit amet consectetur adipiscing.',
    description: 'Lorem ipsum doloasr sit amet consectetur adipiscing.',
  ),
  Slide(
    imageUrl: "assets/images/slide_image3.svg",
    title: 'Lorem ipsum doloasr sit amet consectetur adipiscing.',
    description: 'Lorem ipsum doloasr sit amet consectetur adipiscing.',
  ),
];
