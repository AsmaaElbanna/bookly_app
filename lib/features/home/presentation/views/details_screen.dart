import 'package:bookly_app/common_widget/custom_button.dart';
import 'package:bookly_app/const.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widgets/book_rating.dart';

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
            Padding(padding: EdgeInsets.symmetric(horizontal: width * 0.25),
            child: const CustomBookItem()),
            const SizedBox(height: 40,),
            Text('The Jungle Book',
              style: Styles.textStyle30.copyWith(fontFamily: kGtSectraFine),
            ),
            const SizedBox(height: 6,),
            Text('Rudyard Kipling',
              style: Styles.textStyle16.copyWith(color: Colors.grey),
            ),
            const SizedBox(height: 10),
            const BookRating(),
            const BookAction()
          ],

        ),
      ),
    );
  }
}

class BookAction extends StatelessWidget {
  const BookAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        CustomButton()
      ],
    );
  }
}

