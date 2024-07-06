import 'package:bookly_app/utils/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../../../utils/app_router.dart';

class CustomBookItem extends StatelessWidget {
  final String? imageURL;
  const CustomBookItem({Key? key,  this.imageURL}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kDetails);
      },
      child: AspectRatio(
        aspectRatio: 1.5/2.3,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: CachedNetworkImage(
            imageUrl: imageURL!,
            fit: BoxFit.fill,
            placeholder: (context, url) => const CustomLoadingIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error_outline),
          ),
        )

        // Container(
        //   decoration:  BoxDecoration(
        //   borderRadius: BorderRadius.circular(20),
        //     image:  DecorationImage(
        //       // image: AssetImage(AssetData.testImage),
        //       image: NetworkImage(imageURL ?? ''),
        //       fit: BoxFit.cover
        //     )
        //   ),
        // ),
      ),
    );
  }
}
