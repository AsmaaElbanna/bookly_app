import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/best_seller_list_item.dart';

class SearchViewResult extends StatelessWidget {
  const SearchViewResult({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
      // return const BestSellerItem();
      return const Text('data');
    },);
  }
}
