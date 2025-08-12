class ItemModel {
  int? itemId;
  String? name;
  String? description;
  double? currentPrice;
  String? restaurantName;
  int? restaurantId;
  String? image;

  ItemModel({
    this.itemId,
    this.name,
    this.description,
    this.currentPrice,
    this.restaurantName,
    this.restaurantId,
    this.image,
  });

  factory ItemModel.fromJson(Map<String, dynamic> json) => ItemModel(
        itemId: json['itemID'] as int?,
        name: json['itemName'] as String?,
        description: json['itemDescription'] as String?,
        currentPrice: (json['itemPrice'] as num?)?.toDouble(),
        restaurantName: json['restaurantName'] as String?,
        restaurantId: json['restaurantID'] as int?,
        image: json['imageUrl'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'itemID': itemId,
        'itemName': name,
        'itemDescription': description,
        'itemPrice': currentPrice,
        'restaurantName': restaurantName,
        'restaurantID': restaurantId,
        'imageUrl': image,
      };
}
