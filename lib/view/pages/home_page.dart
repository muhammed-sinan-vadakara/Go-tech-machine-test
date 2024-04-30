import 'package:flutter/material.dart';
import 'package:gotech_mashinetest/view/widgets/appbar_widget.dart';
import 'package:gotech_mashinetest/view/widgets/menu_widget.dart';
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
            MenuWidget(title: 'Hello', child: Text('sdfdsf')),
            MenuWidget(title: 'Hello', child: Text('sdfdsf')),
            MenuWidget(title: 'Hello', child: Text('sdfdsf')),
          ],
        ),
      ),
    );
  }
}
