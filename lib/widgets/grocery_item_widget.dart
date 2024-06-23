import 'package:flutter/material.dart';
import 'package:shopping_list_app/models/grocery_item.dart';

class GroceryItemWidget extends StatelessWidget {
  final GroceryItem groceryItem;
  const GroceryItemWidget({super.key, required this.groceryItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(color: groceryItem.category.color),
          ),
          const SizedBox(
            width: 32,
          ),
          Text(
            groceryItem.name,
            style: const TextStyle(fontSize: 16),
          ),
          const Spacer(),
          Text(
            groceryItem.quantity.toString(),
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
