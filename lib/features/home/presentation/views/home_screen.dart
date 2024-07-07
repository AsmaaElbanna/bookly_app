import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_book_list.dart';
import 'package:flutter/material.dart';
import '../../../../utils/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(),
                  FeaturedBooksListView(),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 1,horizontal: 20),
                    child: Text(
                      'Best Seller',
                      style: Styles.textStyle16,
                    ),
                  ),
                  SizedBox(height: 20),
                  // BestSellerListView()
                ],
              ),
            ),
             SliverToBoxAdapter(
               child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
               child: BestSellerListView()),
             )
          ],
        )









      ),
    );
  }
}


