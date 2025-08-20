import 'package:flutter/material.dart';
import 'addProductScreen.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(),
                title: Text('Product Name'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Product Code: 12345'),
                    Row(
                      spacing: 30,
                      children: [
                        Text('Quantity: 5'),
                        Text('Unit Price: \$500'),
                      ],
                    ),
                  ],
                ),
                trailing: PopupMenuButton<MenuOptions>(
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                          value: MenuOptions.update, child: Text('Update')),
                      PopupMenuItem(
                          value: MenuOptions.delete, child: Text('Delete')),
                    ];
                  },
                  onSelected: (MenuOptions selectedOption) {
                    if (selectedOption == MenuOptions.update) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Product Updated Successfully')));
                    } else if (selectedOption == MenuOptions.delete) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Product Deleted!')));
                    }
                  },
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                indent: 70,
              );
            },
            itemCount: 10),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Addproductscreen()));
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                backgroundColor: Colors.green,
                content: Text('Add Product Button Pressed')),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

enum MenuOptions {
  update,
  delete,
}
