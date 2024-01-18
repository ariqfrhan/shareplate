class Sellermenus {
  String? id;
  String? name;
  String? description;
  String? category;
  int? price;
  int? sellerId;
  int? amount;
  double? longitude;
  double? latitude;

  Sellermenus(
      {this.id,
      this.name,
      this.description,
      this.category,
      this.price,
      this.sellerId,
      this.amount,
      this.longitude,
      this.latitude});

  Sellermenus.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    category = json['category'];
    price = json['price'];
    sellerId = json['sellerId'];
    amount = json['amount'];
    longitude = (json['longitude'] as num?)?.toDouble();
    latitude = (json['latitude'] as num?)?.toDouble();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['category'] = category;
    data['price'] = price;
    data['sellerId'] = sellerId;
    data['amount'] = amount;
    data['longitude'] = longitude;
    data['latitude'] = latitude;
    return data;
  }
}
