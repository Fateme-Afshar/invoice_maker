import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../custom-widget/custom-button.dart';
import '../../custom-widget/custom-text-field.dart';

class AddProductPage extends StatelessWidget{
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(left: 24, right: 24),
          alignment: Alignment.center,
          constraints: const BoxConstraints(
            maxWidth: 400,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text("New product"),
              ),
              InputTextField(
                key: const Key("nameField"),
                hint: "Name",
              ),
              const SizedBox(
                height: 10,
              ),
              InputTextField(
                key: const Key("priceField"),
                hint: "Price",
              ),
              const SizedBox(
                height: 15,
              ),
              Button(
                btnKey: const Key("addProductBtn"),
                buttonText: "Add",
                onPress: () {},
              )
            ],
          ),
        ),
      ),
    );
  }

}