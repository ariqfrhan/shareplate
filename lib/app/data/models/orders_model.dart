class Orders {
  String? id;
  String? date;
  String? status;
  String? recipient;
  String? selerMenuId;
  int? amount;
  String? createdAt;
  String? updatedAt;

  Orders(
      {this.id,
      this.date,
      this.status,
      this.recipient,
      this.selerMenuId,
      this.amount,
      this.createdAt,
      this.updatedAt});

  Orders.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    status = json['status'];
    recipient = json['recipient'];
    selerMenuId = json['selerMenuId'];
    amount = json['amount'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['date'] = date;
    data['status'] = status;
    data['recipient'] = recipient;
    data['selerMenuId'] = selerMenuId;
    data['amount'] = amount;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
