import 'package:flutter/material.dart';
import 'package:gotech_mashinetest/view/widgets/inner_submenu.dart';

class ExpansionPanelWidget extends StatefulWidget {
  final String heading;
  final String subheading1;
  final String subheading2;
  final String innersubheading1;
  final String innersubheading2;
  final String tittle;
  final String description;

  const ExpansionPanelWidget({
    super.key,
    required this.heading,
    required this.subheading1,
    required this.subheading2,
    required this.innersubheading1,
    required this.innersubheading2,
    required this.tittle,
    required this.description,
  });

  @override
  State<ExpansionPanelWidget> createState() => _ExpansionPanelWidgetState();
}

class _ExpansionPanelWidgetState extends State<ExpansionPanelWidget> {
  bool menu = false;
  bool submenu1 = false;
  bool submenu2 = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (panelIndex, isExpanded) {
        menu = !menu;
        setState(() {});
      },
      children: <ExpansionPanel>[
        ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
              child: Text(
                widget.heading,
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 21),
              ),
            );
          },
          body: Column(
            children: [
              ExpansionPanelList(
                expansionCallback: (panelIndex, isExpanded) {
                  submenu1 = !submenu1;
                  setState(() {});
                },
                children: <ExpansionPanel>[
                  ExpansionPanel(
                    headerBuilder: (context, isExpanded) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 6),
                        child: Text(
                          widget.subheading1,
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        ),
                      );
                    },
                    isExpanded: submenu1,
                    canTapOnHeader: true,
                    body: InnerSubMenuWidget(
                        innersubheading1: widget.innersubheading1,
                        innersubheading2: widget.innersubheading2,
                        tittle: widget.tittle,
                        description: widget.description),
                  ),
                  // ),
                ],
              ),
              ExpansionPanelList(
                expansionCallback: (panelIndex, isExpanded) {
                  submenu2 = !submenu2;
                  setState(() {});
                },
                children: <ExpansionPanel>[
                  ExpansionPanel(
                    headerBuilder: (context, isExpanded) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 6),
                        child: Text(
                          widget.subheading2,
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        ),
                      );
                    },
                    isExpanded: submenu2,
                    canTapOnHeader: true,
                    body: InnerSubMenuWidget(
                      innersubheading2: widget.innersubheading2,
                      tittle: widget.tittle,
                      description: widget.description,
                      innersubheading1: widget.innersubheading1,
                    ),
                  ),
                ],
              ),
            ],
          ),
          isExpanded: menu,
          canTapOnHeader: true,
        ),
      ],
    );
  }
}
