class Cartt {
  final String title;
  final dynamic image;
  final String subtitle;
  final dynamic add;
  Cartt(
      {required this.title,
      required this.image,
      required this.subtitle,
      required this.add});

  String get _title => title;
  String get _image => image;
  String get _subtitle => subtitle;
  String get _add => add;
}
