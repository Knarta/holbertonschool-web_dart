import 'dart:convert';

import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    final userData = await fetchUserData();
    final Map<String, dynamic> user = jsonDecode(userData);
    final userId = user['id'];

    final ordersData = await fetchUserOrders(userId);
    final List<dynamic> orders = jsonDecode(ordersData);

    double total = 0;

    for (final product in orders) {
      final price = await fetchProductPrice(product);
      total += double.parse(price);
    }

    return total;
  } catch (error) {
    return -1;
  }
}
