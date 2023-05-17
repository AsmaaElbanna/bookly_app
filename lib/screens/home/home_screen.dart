import 'package:bookly_app/screens/home/widgets/best_seller_list_item.dart';
import 'package:bookly_app/screens/home/widgets/custom_app_bar.dart';
import 'package:bookly_app/screens/home/widgets/book_list_item.dart';
import 'package:bookly_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CustomAppBar(),
              FeaturedBooksList(),
              SizedBox(
                height: 40,
              ),
              Text(
                'Best Seller',
                style: Styles.textStyle16,
              ),
              SizedBox(height: 20),
              BestSellerItem()
            ],
          ),
        ),
      ),
    );
  }
}

class FeaturedBooksList extends StatelessWidget {
  const FeaturedBooksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: Padding(
        padding: EdgeInsets.only(left: 5),
        child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: CustomItem());
          },
        ),
      ),
    );
  }
}
