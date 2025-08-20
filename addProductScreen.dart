import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddproductscreenState();
}

class _AddproductscreenState extends State<AddProductScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _imgUrlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: _nameController,
                  decoration: InputDecoration(
                    hintText: 'Product Name',
                    labelText: 'Product Name',
                  ),
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: _codeController,
                  decoration: InputDecoration(
                    hintText: 'Code',
                    labelText: 'Code',
                  ),
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: _quantityController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                    hintText: 'Quantity',
                    labelText: 'Quantity',
                  ),
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  controller: _priceController,
                  decoration: InputDecoration(
                    hintText: 'Unit Price',
                    labelText: 'Unit Price',
                  ),
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: _imgUrlController,
                  decoration: InputDecoration(
                    hintText: 'Image Url',
                    labelText: 'Image Url',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 30,
                  child: FilledButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.green,
                            content: Text('Product Added Successfully')));
                      },
                      child: Text('Add Product')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
