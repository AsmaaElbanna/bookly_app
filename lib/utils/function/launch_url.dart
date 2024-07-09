import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

import 'custom_snack_bar.dart';

Future<void> customLaunchURL(BuildContext context , String url)async{
  final uri = Uri.parse(url);
  if (!await canLaunchUrl(uri)) {
  await launchUrl(uri);
  }else {
    customSnackBar(context, 'Cannot launch $url');
  }
}