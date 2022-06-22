class TopTrending {
  final String brandName;
  final String imageUrl;
  final double price;
  TopTrending({this.brandName, this.imageUrl, this.price});
  factory TopTrending.fromJson(Map<String, dynamic> json) => TopTrending(
      brandName: json['brandName'],
      imageUrl: json['imageUrl'],
      price: json['price']);
}
