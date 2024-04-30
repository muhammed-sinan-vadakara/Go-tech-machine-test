import 'package:flutter/material.dart';
import 'package:gotech_mashinetest/view/widgets/appbar_widget.dart';
import 'package:gotech_mashinetest/view/widgets/menu_content_widget.dart';
import 'package:gotech_mashinetest/view/widgets/menu_widget.dart';
import 'package:gotech_mashinetest/core/widgets/gap_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            MenuWidget(
              title: 'Hello',
              child: MenuWidget(
                  title: 'SUB',
                  child: MenuContentWidget(content: 'sdfsdf', title: 'sdfs')),
            ),
            GapWidget.h16(),
            MenuWidget(title: 'Hello', child: Text('sdfdsf')),
            GapWidget.h16(),
            MenuWidget(title: 'Hello', child: Text('sdfdsf')),
            GapWidget.h16(),
          ],
        ),
      ),
    );
  }
}
