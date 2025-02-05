import 'package:booklyapp/core/utils/functions/coustom_snakeBar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> coutomUrlLuncher({context, required String? url}) async {
  if (url != null) {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      showSnakBar(context, 'cant launch this : $uri', color: Colors.red);
    }
  }
}
