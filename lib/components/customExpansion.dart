import 'package:flutter/material.dart';

class CustomExpansionPanel extends StatefulWidget {
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
  State<CustomExpansionPanel> createState() => _CustomExpansionPanelState();
}

class _CustomExpansionPanelState extends State<CustomExpansionPanel> {
  bool _isHovered = false; // Hover state flag

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: 0, horizontal: widget.parentPaddingLeft as double),
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: (event) =>
                setState(() => _isHovered = true), // Mouse enters
            onExit: (event) =>
                setState(() => _isHovered = false), // Mouse exits
            child: GestureDetector(
              onTap: widget.onTap,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 4, 1, 0),
                    child: Icon(
                      widget.isExpanded
                          ? Icons.arrow_drop_down
                          : Icons.arrow_right,
                      color: _isHovered
                          ? const Color(0xffFAFAFA)
                              .withOpacity(0.8) // Color when hovered
                          : const Color(0xffFAFAFA)
                              .withOpacity(widget.isExpanded ? 0.85 : 0.30),
                    ),
                  ),
                  const SizedBox(
                      width: 1.0), // Adjust the space as per your need
                  Expanded(
                    child: Text(
                      widget.title,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'Aptos',
                        fontSize: 16,
                        color: _isHovered
                            ? const Color(0xffFAFAFA)
                                .withOpacity(0.8) // Color when hovered
                            : const Color(0xffFAFAFA).withOpacity(
                                widget.isExpanded
                                    ? 0.85
                                    : 0.30), // Default color
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
          ),
        ),
        // Conditional rendering of the child
        if (widget.isExpanded)
          Padding(
            padding:
                EdgeInsets.fromLTRB(widget.parentPaddingLeft + 13, 0, 0, 0),
            child: widget.child,
          ),
      ],
    );
  }
}
