import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gotech_mashinetest/view/widgets/appbar_widget.dart';
import 'package:gotech_mashinetest/view/widgets/menu_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, dynamic> menuJson = {};

  @override
  void initState() {
    super.initState();

    rootBundle.loadString('assets/json/data.json').then((json) {
      setState(() {
        menuJson = jsonDecode(json);
      });
    });
  }

  /// Loop through the menu map and generate the widget tree to be rendered in the screen
  ///
  /// If the map contains the keys "Title" and "Body", then that map is considered as the leaf node '
  /// in the nested map structure.
  ///
  /// Else the nested menus are rendered until the leaf content map is found.
  List<Widget> getMenuToRender(List<Widget> menuWidgets) {
    return [for (final key in menuJson.keys) getMenuWidget(key, menuJson[key])];
  }

  /// Find the widget that needs to be rendered as the menu
  Widget getMenuWidget(String key, dynamic value) {
    if (value is! Map) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Text(
          value.toString(),
          style:
              key == 'Title' ? Theme.of(context).textTheme.headlineSmall : null,
        ),
      );
    }

    return MenuWidget(
      title: key,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (final itemKey in value.keys)
              getMenuWidget(itemKey, value[itemKey])
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(MediaQuery.sizeOf(context).width, 60),
          child: const AppbarWidget(
            tittle: "Menu",
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [...getMenuToRender([])],
        ),
      ),
    );
  }
}
