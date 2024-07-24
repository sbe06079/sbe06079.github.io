// topCenterLogo.dart
import 'package:flutter/material.dart';
import 'website_colors.dart';

class TopCenterLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        color: WebsiteColors.memojiBackground, // Background color
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.transparent, // Transparent border
          width: 0, // Adjust border width as needed
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(0.0), // Adjust the padding as needed
        child: ClipOval(
          child: SizedBox(
            width: 85,
            height: 85,
            child: Image.asset(
              'assets/evan_memoji.png',
            ),
          ),
        ),
      ),
    );
  }
}
