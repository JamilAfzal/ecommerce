class Categoriess {
  final dynamic imagepath;
  final String text;
  final String ranges;
  final String heading;
  Categoriess(
      {required this.heading,
      required this.imagepath,
      required this.ranges,
      required this.text});

  String get _heading => heading;
  String get _image => imagepath;
  String get _ranges => ranges;
  String get _text => text;
}
