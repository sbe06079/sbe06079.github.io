import 'package:flutter/material.dart';

class CustomExpansionPanel extends StatelessWidget {
  final String title;
  final bool isExpanded;
  final VoidCallback onTap;
  final Widget child;
  final int parentPaddingLeft;

  const CustomExpansionPanel({
    Key? key,
    required this.title,
    required this.isExpanded,
    required this.onTap,
    required this.child,
    required this.parentPaddingLeft,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Removed InkWell here
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: 0, horizontal: parentPaddingLeft as double),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 1, 0),
                child: MouseRegion(
                  cursor: SystemMouseCursors
                      .click, // Use the hand cursor for clickable items.
                  child: GestureDetector(
                    onTap: onTap,
                    child: Icon(
                      isExpanded ? Icons.arrow_drop_down : Icons.arrow_right,
                      color: const Color(0xffFAFAFA)
                          .withOpacity(isExpanded ? 0.85 : 0.30),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 1.0), // Adjust the space as per your need
              Expanded(
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: 'Aptos',
                    fontSize: 16,
                    color: const Color(0xffFAFAFA)
                        .withOpacity(isExpanded ? 0.85 : 0.30),
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.4,
                    wordSpacing: 1.1,
                    height: 1.7,
                  ),
                ),
              ),
            ],
          ),
        ),
        // Conditional rendering of the child
        if (isExpanded)
          Padding(
            padding: EdgeInsets.fromLTRB(parentPaddingLeft + 13, 0, 0, 0),
            child: child,
          ),
      ],
    );
  }
}
