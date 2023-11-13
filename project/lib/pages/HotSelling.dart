class HotSelling {
  final String text;
  final String amount;
  final dynamic image;
  final String ratings;
  final String subtitle;
  HotSelling(
      {required this.amount,
      required this.text,
      required this.image,
      required this.ratings,
      required this.subtitle});
  String get _amount => amount;
  String get _text => text;
  String get _image => image;
  String get _ratings => ratings;
  String get _subtitle => subtitle;
}
