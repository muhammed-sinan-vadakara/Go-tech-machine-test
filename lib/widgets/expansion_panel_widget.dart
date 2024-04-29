import 'package:flutter/material.dart';

class ExpansionPanelWidget extends StatefulWidget {
  final String heading;
  final String subheading;
  final String tittle;
  final String description;

  const ExpansionPanelWidget({
    super.key,
    required this.heading,
    required this.subheading,
    required this.tittle,
    required this.description,
  });

  @override
  State<ExpansionPanelWidget> createState() => _ExpansionPanelWidgetState();
}

class _ExpansionPanelWidgetState extends State<ExpansionPanelWidget> {
  // String exTitle = "Sport Categories";
  bool active = false;
  bool active1 = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (panelIndex, isExpanded) {
        active = !active;
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
                  active1 = !active1;
                  setState(() {});
                },
                children: <ExpansionPanel>[
                  ExpansionPanel(
                      headerBuilder: (context, isExpanded) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 6),
                          child: Text(
                            widget.subheading,
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          ),
                        );
                      },
                      isExpanded: active1,
                      canTapOnHeader: true,
                      body: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        child: Column(
                          children: [
                            Text(
                              widget.tittle,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w800),
                            ),
                            Text(
                              widget.description,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ],
          ),
          isExpanded: active,
          canTapOnHeader: true,
        )
      ],
    );
  }
}
