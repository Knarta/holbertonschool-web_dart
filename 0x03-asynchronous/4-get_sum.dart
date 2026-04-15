import 'dart:convert';

import '4-util.dart';

Future<num> calculateTotal() async {
  try {
    final userData = await fetchUserData();
    final user = jsonDecode(userData) as Map<String, dynamic>;

    final orderData = await fetchUserOrders(user['id']);
    final orders = jsonDecode(orderData) as List<dynamic>;

    double total = 0;

    for (String item in orders) {
      var itemData = await fetchProductPrice(item);
      var price = jsonDecode(itemData) as num;
      total += price;
    }
    return total;
  } catch (error) {
    return -1;
  }
}