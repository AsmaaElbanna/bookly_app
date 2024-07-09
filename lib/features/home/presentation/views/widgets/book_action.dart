import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/utils/function/launch_url.dart';
import 'package:flutter/material.dart';
import '../../../../../common_widget/custom_button.dart';
import '../../../../../const.dart';
import 'package:url_launcher/url_launcher.dart';

class BookAction extends StatelessWidget {
  final BookModel book;

  const BookAction({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          onPressed: () {},
          title: 'Free',
          backgroundColor: Colors.white,
          titleColor: Colors.black,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
        ),
        CustomButton(
          onPressed: () async {
            debugPrint('Preview link: ${book.volumeInfo.previewLink}');
            customLaunchURL(context, book.volumeInfo.previewLink!);
          },
          title: 'Free Preview',
          backgroundColor: kOrange,
          titleColor: Colors.white,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
        ),
      ],
    );
  }
}
