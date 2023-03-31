// import 'package:crypto/ui_Pages/widgets/Coin.dart';
// import 'package:get/get_rx/src/rx_types/rx_types.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';
// import 'package:http/http.dart' as http;

// class Coincontroller extends GetxController {
//   List<Coin> coinList = <Coin>[].obs;
//   fetchCoin() async {
//     var response = await http
//         .get(Uri.parse('http://139.59.57.191:5000/user/getCryptoList'));
//     List<Coin> coins = coinFromJson(response.body) as List<Coin>;
//     coinList. = coins;
//   }
// }
import 'dart:convert';

import 'package:crypto/ui_Pages/modelhold.dart';
import 'package:crypto/ui_Pages/widgets/Coin.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;

class OpenseaController extends GetxController {
  var isLoading = false.obs;
  Coin? openseaModel;

  @override
  Future<void> onInit() async {
    super.onInit();
    fetchData();
  }

  fetchData() async {
    try {
      isLoading(true);
      http.Response response = await http
          .get(Uri.tryParse('http://139.59.57.191:5000/user/getCryptoList')!);
      if (response.statusCode == 200) {
        ///data successfully
        var result = jsonDecode(response.body);

        openseaModel = Coin.fromJson(result);
      } else {
        print('error fetching data');
      }
    } catch (e) {
      print('Error while getting data is $e');
    } finally {
      isLoading(false);
    }
  }
}
