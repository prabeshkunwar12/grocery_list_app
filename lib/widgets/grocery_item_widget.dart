import 'package:flutter/material.dart';
import 'package:shopping_list_app/models/grocery_item.dart';

class GroceryItemWidget extends StatelessWidget {
  final GroceryItem groceryItem;
  const GroceryItemWidget({super.key, required this.groceryItem});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        groceryItem.name,
        style: const TextStyle(fontSize: 16),
      ),
      leading: Container(
        height: 24,
        width: 24,
        color: groceryItem.category.color,
      ),
      trailing: Text(
        groceryItem.quantity.toString(),
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
