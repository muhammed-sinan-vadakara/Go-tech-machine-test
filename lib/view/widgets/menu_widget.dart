import 'package:flutter/material.dart';

class MenuWidget extends StatefulWidget {
  final String title;
  final Widget child;

  const MenuWidget({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  bool isExpanded = false;

  /// Description: Toggel the expansion panel state
  /// This is used to expand or collapse the expansion panel
  ///
  /// [isExpanded] Indicate if the panel is expanded or not. If true, then the panel is expanded, else
  /// panel is not expanded
  void toggleExpansionPanel(bool isExpanded) {
    setState(() {
      this.isExpanded = isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (_, isExpanded) => toggleExpansionPanel(isExpanded),
      children: <ExpansionPanel>[
        ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
              child: Text(
                widget.title,
                style:
                    const TextStyle(fontWeight: FontWeight.w800, fontSize: 21),
              ),
            );
          },
          body: widget.child,
          isExpanded: isExpanded,
          canTapOnHeader: true,
        ),
      ],
    );
  }
}
