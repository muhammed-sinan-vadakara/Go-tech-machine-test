import 'package:flutter/material.dart';
import 'package:gotech_mashinetest/widgets/appbar_widget.dart';
import 'package:gotech_mashinetest/widgets/expansion_panel_widget.dart';
import 'package:gotech_mashinetest/widgets/sizedbox16_widget.dart';

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
      body: const Column(
        children: [
          SizedBox16Widget(),
          ExpansionPanelWidget(
            heading: "LevelX",
            subheading: "Flutter",
            tittle: "1st Team",
            description: "It is a big team in this institution",
          ),
          SizedBox16Widget(),
          // ExpansionPanelWidget(),
          SizedBox16Widget(),
          // ExpansionPanelWidget()
        ],
      ),
    );
  }
}
