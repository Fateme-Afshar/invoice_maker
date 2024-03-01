import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../custom-widget/custom-button.dart';
import '../../custom-widget/custom-text-field.dart';

class ProductInfoPage extends StatelessWidget {
  const ProductInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.delete))],
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(left: 24, right: 24),
          alignment: Alignment.center,
          constraints: const BoxConstraints(
            maxWidth: 400,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text("Product information"),
              ),
              InfoTextField(
                key: const Key("nameField"),
                value: "test name",
              ),
              const SizedBox(
                height: 10,
              ),
              InfoTextField(
                key: const Key("priceField"),
                value: "\$1000",
              ),
              const SizedBox(
                height: 15,
              ),
              Button(
                btnKey: const Key("updateProductBtn"),
                buttonText: "Update",
                onPress: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
