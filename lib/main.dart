import 'dart:convert';

void main() {
  print('=== 8.2 Введение в JSON ===');

  String rawJsonString = '''
  {
    "store_name": "TechShop Almaty",
    "is_open": true,
    "products": [
      {"id": 1, "title": "MacBook Air M2", "price": 1100.0},
      {"id": 2, "title": "Logitech Mouse", "price": 25.5}
    ]
  }
  ''';

  final Map<String, dynamic> parsedJson = jsonDecode(rawJsonString);

  print('Магазин: ${parsedJson['store_name']}');
  print('Открыт: ${parsedJson['is_open'] ? "Да" : "Нет"}');

  final List<dynamic> productsList = parsedJson['products'];

  final secondProduct = productsList[1] as Map<String, dynamic>;
  print(
    'Второй продукт в списке: ${secondProduct['title']} (${secondProduct['price']} \$);',
  );
}
