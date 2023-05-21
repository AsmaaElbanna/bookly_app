import 'package:bookly_app/const.dart';
import 'package:bookly_app/screens/home/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width =MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        actions: [
          Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          child: IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart))),
        ],
        leading:Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),

        child: IconButton(onPressed: (){
          GoRouter.of(context).pop();
        }, icon: const Icon(Icons.close))) ,

      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: width * 0.2),
            child: CustomBookItem())
          ],

        ),
      ),
    );
  }
}
