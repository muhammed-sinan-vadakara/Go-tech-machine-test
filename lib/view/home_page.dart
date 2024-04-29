import 'package:flutter/material.dart';
import 'package:gotech_mashinetest/widgets/appbar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String exTitle = "Sport Categories";
  bool active = false;
  bool active1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(MediaQuery.sizeOf(context).width, 60),
          child: AppbarWidget()),
      body: Column(
        children: [
          ExpansionPanelList(
            expansionCallback: (panelIndex, isExpanded) {
              active = !active;
              if (exTitle == "Sport Categories")
                exTitle = "Contract";
              else
                exTitle = "Sport Categories";
              setState(() {});
            },
            children: <ExpansionPanel>[
              ExpansionPanel(
                  headerBuilder: (context, isExpanded) {
                    return Text(exTitle);
                  },
                  body: Column(
                    children: [
                      ExpansionPanelList(
                        expansionCallback: (panelIndex, isExpanded) {
                          active1 = !active1;
                          if (exTitle == "Sport Categories")
                            exTitle = "Contract";
                          else
                            exTitle = "Sport Categories";
                          setState(() {});
                        },
                        children: <ExpansionPanel>[
                          ExpansionPanel(
                              headerBuilder: (context, isExpanded) {
                                return Text(exTitle);
                              },
                              isExpanded: active1,
                              canTapOnHeader: true,
                              body: Column(
                                children: [Text("Sinan")],
                              ))
                        ],
                      ),
                    ],
                  ),
                  isExpanded: active,
                  canTapOnHeader: true)
            ],
          ),
        ],
      ),
    );
  }
}
