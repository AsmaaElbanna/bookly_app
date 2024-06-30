import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_view_result.dart';
import 'package:flutter/cupertino.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all( 16),
      child: Column(
        children: [
          CustomSearchField(),
          SizedBox(height: 10,),
          Expanded(child: SearchViewResult())
        ],
      ),
    );
  }
}
