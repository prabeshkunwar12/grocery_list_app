import 'package:flutter/material.dart';
import 'package:shopping_list_app/models/grocery_item.dart';

class GroceryItemWidget extends StatelessWidget {
  final GroceryItem groceryItem;
  final void Function(GroceryItem groceryItem) removeItem;
  const GroceryItemWidget({
    super.key,
    required this.groceryItem,
    required this.removeItem,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(groceryItem.id),
      onDismissed: (direction) {
        removeItem(groceryItem);
      },
      child: ListTile(
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
      ),
    );
  }
}
