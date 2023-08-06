import 'package:book/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
    required this.onSubmitted,
  });
  final void Function(String)? onSubmitted;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kColorTextField,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        disabledBorder: buildOutlineInputBorder(),
        hintText: 'Search',
        suffixIconColor: kColorTextField,
        suffixIcon: const Opacity(
          opacity: 0.7,
          child: Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 18,
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(
        color: kColorTextField,
      ),
    );
  }
}
