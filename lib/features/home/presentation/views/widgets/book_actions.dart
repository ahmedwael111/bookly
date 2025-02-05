import 'package:booklyapp/core/utils/functions/coustom_url_launcher.dart';
import 'package:booklyapp/core/utils/widgets/coustom_bottom.dart';
import 'package:booklyapp/core/utils/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookActions extends StatelessWidget {
  const BookActions({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          const Expanded(
            child: CoustomBottom(
              fontWeight: FontWeight.w900,
              text: 'Free ',
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              textcolor: Colors.black,
            ),
          ),
          Expanded(
            child: CoustomBottom(
              onpressed: () async {
                coutomUrlLuncher(url: bookModel.volumeInfo.previewLink);
              },
              fontWeight: FontWeight.w600,
              text: 'Preview',
              backgroundColor: const Color(0xffEF8262),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              textcolor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
