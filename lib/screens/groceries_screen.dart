import 'package:flutter/material.dart';
import 'package:shopping_list_app/data/dummuy_items.dart';
import 'package:shopping_list_app/widgets/grocery_item_widget.dart';

class GroceriesScreen extends StatelessWidget {
  const GroceriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: groceryItems
              .map(
                (groceryItem) => GroceryItemWidget(groceryItem: groceryItem),
              )
              .toList(),
        ),
      ),
    );
  }
}
