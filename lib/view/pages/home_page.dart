import 'package:flutter/material.dart';
import 'package:gotech_mashinetest/view/widgets/appbar_widget.dart';
import 'package:gotech_mashinetest/view/widgets/expansion_panel_widget.dart';
import 'package:gotech_mashinetest/core/widgets/gap_widget.dart';

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
          child: const AppbarWidget(
            tittle: "HOME",
          )),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            GapWidget.h16(),
            ExpansionPanelWidget(
              heading: "LevelX",
              subheading1: "Flutter",
              innersubheading1: "wertyu",
              innersubheading2: "jjj",
              subheading2: "ddddddddddddd",
              tittle: "1st Team",
              description:
                  "Mobile application , desktop application , ios application ,etc ....",
            ),
            GapWidget.h16(),
            ExpansionPanelWidget(
              heading: "Mobile App",
              subheading1: "Flutter",
              innersubheading1: "wertyu",
              innersubheading2: "",
              subheading2: "",
              tittle: "1st Team",
              description:
                  "Mobile application , desktop application , ios application ,etc ....",
            ),
            GapWidget.h16(),
            ExpansionPanelWidget(
              heading: "Desktop App",
              subheading1: "Flutter",
              subheading2: "abcd",
              innersubheading2: "",
              innersubheading1: "qwert",
              tittle: "1st Team",
              description:
                  "Mobile application , desktop application , ios application ,etc ....",
            ),
            GapWidget.h16(),
            ExpansionPanelWidget(
              heading: "LevelX",
              subheading1: "Flutter",
              innersubheading1: "wertyu",
              innersubheading2: "",
              subheading2: "",
              tittle: "1st Team",
              description:
                  "Mobile application , desktop application , ios application ,etc ....",
            ),
            GapWidget.h16(),
            ExpansionPanelWidget(
              heading: "LevelX",
              subheading1: "Flutter",
              innersubheading1: "wertyu",
              innersubheading2: "",
              subheading2: "",
              tittle: "1st Team",
              description:
                  "Mobile application , desktop application , ios application ,etc ....",
            ),
            GapWidget.h16(),
            ExpansionPanelWidget(
              heading: "LevelX",
              subheading1: "Flutter",
              innersubheading1: "wertyu",
              innersubheading2: "",
              subheading2: "",
              tittle: "1st Team",
              description:
                  "Mobile application , desktop application , ios application ,etc ....",
            ),
            GapWidget.h16(),
            ExpansionPanelWidget(
              heading: "LevelX",
              subheading1: "Flutter",
              innersubheading1: "wertyu",
              innersubheading2: "",
              subheading2: "",
              tittle: "1st Team",
              description:
                  "Mobile application , desktop application , ios application ,etc ....",
            ),
            GapWidget.h16(),
            ExpansionPanelWidget(
              heading: "LevelX",
              subheading1: "Flutter",
              innersubheading2: "",
              subheading2: "",
              innersubheading1: "wertyu",
              tittle: "1st Team",
              description:
                  "Mobile application , desktop application , ios application ,etc ....",
            ),
            GapWidget.h16(),
            ExpansionPanelWidget(
              heading: "LevelX",
              subheading1: "Flutter",
              innersubheading2: "",
              subheading2: "",
              innersubheading1: "wertyu",
              tittle: "1st Team",
              description:
                  "Mobile application , desktop application , ios application ,etc ....",
            )
          ],
        ),
      ),
    );
  }
}
