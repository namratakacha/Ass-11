import 'package:flutter/cupertino.dart';

class ImageList {
  final String image;

  ImageList({required this.image});
}

List images = [
  {"image": "assets/image1.jpg"},
  {"image": "assets/image2.jpeg"},
  {"image": "assets/image3.jpg"},
  {"image": "assets/image4.jpg"},
  {"image": "assets/image5.jpg"}
];
List<ImageList> getImageList() {
  return images
      .map((item) => ImageList(
            image: item["image"],
          ))
      .toList();
}
