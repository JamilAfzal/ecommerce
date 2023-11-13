// ignore_for_file: unused_element

class Accessories {
  final String name;
  final dynamic imagePath;
  final String rating;
  final String price;
  Accessories(
      {required this.name,
      required this.imagePath,
      required this.rating,
      required this.price});

  String get _name => name;
  String get _price => price;
  String get _path => imagePath;
  String get _rating => rating;
}
