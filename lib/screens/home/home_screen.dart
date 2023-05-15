import 'package:bookly_app/screens/home/widgets/custom_app_bar.dart';
import 'package:bookly_app/screens/home/widgets/custom_list_item.dart';
import 'package:bookly_app/styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  const [
              CustomAppBar(),
              FeaturedBooksList(),
              SizedBox(height: 40,),
              Text('Best Seller',
              style: Styles.titleMedium,)


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
      height:MediaQuery.of(context).size.height *.3,
      child: Padding(
        padding: EdgeInsets.only(left: 5),
        child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
            child: CustomItem());

        },),
      ),
    );
  }
}

