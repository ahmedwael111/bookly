import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CoutomSearchTextField extends StatelessWidget {
  const CoutomSearchTextField({super.key, this.onSubmitted});
final Function(String)? onSubmitted;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
          hintText: 'Searsh for Books',
          suffixIcon: const Opacity(
              opacity: .7, child: Icon(FontAwesomeIcons.magnifyingGlass)),
          enabledBorder: jenralOutlineInputBorder(),
          focusedBorder: jenralOutlineInputBorder()),
    );
  }

  OutlineInputBorder jenralOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.white));
  }
}
