import 'package:bookly_app/const.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        actions: [
          Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          child: IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart))),
        ],
        leading:Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),

        child: IconButton(onPressed: (){}, icon: const Icon(Icons.close))) ,

      ),
      body: SafeArea(
        child: Column(

        ),
      ),
    );
  }
}
