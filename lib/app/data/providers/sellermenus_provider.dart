import 'package:get/get.dart';

import '../models/sellermenus_model.dart';

class SellermenusProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Sellermenus.fromJson(map);
      if (map is List)
        return map.map((item) => Sellermenus.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Sellermenus?> getSellermenus(int id) async {
    final response = await get('sellermenus/$id');
    return response.body;
  }

  Future<Response<Sellermenus>> postSellermenus(
          Sellermenus sellermenus) async =>
      await post('sellermenus', sellermenus);
  Future<Response> deleteSellermenus(int id) async =>
      await delete('sellermenus/$id');
}
