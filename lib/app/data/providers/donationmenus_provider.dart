import 'package:get/get.dart';

import '../models/donationmenus_model.dart';

class DonationmenusProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Donationmenus.fromJson(map);
      if (map is List)
        return map.map((item) => Donationmenus.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Donationmenus?> getDonationmenus(int id) async {
    final response = await get('donationmenus/$id');
    return response.body;
  }

  Future<Response<Donationmenus>> postDonationmenus(
          Donationmenus donationmenus) async =>
      await post('donationmenus', donationmenus);
  Future<Response> deleteDonationmenus(int id) async =>
      await delete('donationmenus/$id');
}
