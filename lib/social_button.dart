import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_login_ui/pallete.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String labelText;
  final double horizontalPadding;
  const SocialButton(
      {super.key,
      required this.iconPath,
      required this.labelText,
      this.horizontalPadding = 100});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: (() {}),
      icon: SvgPicture.asset(
        iconPath,
        width: 25,
        color: Colors.white,
      ),
      label: Text(
        labelText,
        style: const TextStyle(color: Colors.white, fontSize: 17),
      ),
      style: TextButton.styleFrom(
          padding:
              EdgeInsets.symmetric(vertical: 30, horizontal: horizontalPadding),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Pallete.borderColor, width: 3))),
    );
  }
}
