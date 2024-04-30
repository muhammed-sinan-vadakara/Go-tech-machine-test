import 'package:flutter/material.dart';

class InnerSubMenuWidget extends StatefulWidget {
  final String innersubheading1;
  final String innersubheading2;
  final String tittle;
  final String description;

  const InnerSubMenuWidget({
    super.key,
    required this.innersubheading1,
    required this.innersubheading2,
    required this.tittle,
    required this.description,
  });

  @override
  State<InnerSubMenuWidget> createState() => _InnerSubMenuWidgetState();
}

class _InnerSubMenuWidgetState extends State<InnerSubMenuWidget> {
  bool innersubmenu1 = false;
  bool innersubmenu2 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionPanelList(
          expansionCallback: (panelIndex, isExpanded) {
            innersubmenu1 = !innersubmenu1;
            setState(() {});
          },
          children: <ExpansionPanel>[
            ExpansionPanel(
              headerBuilder: (context, isExpanded) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
                  child: Text(
                    widget.innersubheading1,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                );
              },
              isExpanded: innersubmenu1,
              canTapOnHeader: true,
              body: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Column(
                  children: [
                    Text(
                      widget.tittle,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                    Text(
                      widget.description,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        ExpansionPanelList(
          expansionCallback: (panelIndex, isExpanded) {
            innersubmenu2 = !innersubmenu2;
            setState(() {});
          },
          children: <ExpansionPanel>[
            ExpansionPanel(
              headerBuilder: (context, isExpanded) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
                  child: Text(
                    widget.innersubheading2,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                );
              },
              isExpanded: innersubmenu2,
              canTapOnHeader: true,
              body: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Column(
                  children: [
                    Text(
                      widget.tittle,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                    Text(
                      widget.description,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
