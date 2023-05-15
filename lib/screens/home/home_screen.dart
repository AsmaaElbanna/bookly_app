import 'package:bookly_app/screens/home/widgets/custom_app_bar.dart';
import 'package:bookly_app/screens/home/widgets/custom_list_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children:  [
            const CustomAppBar(),
            SizedBox(
              height:MediaQuery.of(context).size.height *.3,
                child: const Padding(
               padding: EdgeInsets.only(left: 5),
                child: FeaturedBooksList()))


          ],
        ),
      ),
    );
  }
}

class FeaturedBooksList extends StatelessWidget {
  const FeaturedBooksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return const Padding(padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
        child: CustomItem());

    },);
  }
}

