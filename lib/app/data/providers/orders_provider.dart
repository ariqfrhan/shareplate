import 'package:get/get.dart';

import '../models/orders_model.dart';

class OrdersProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Orders.fromJson(map);
      if (map is List) return map.map((item) => Orders.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Orders?> getOrders(int id) async {
    final response = await get('orders/$id');
    return response.body;
  }

  Future<Response<Orders>> postOrders(Orders orders) async =>
      await post('orders', orders);
  Future<Response> deleteOrders(int id) async => await delete('orders/$id');
}
