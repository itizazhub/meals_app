import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  MainDrawer({super.key, required this.onSelectScreen});
  final void Function(String identifer) onSelectScreen;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        DrawerHeader(
          child: Row(
            children: [
              Icon(
                Icons.fastfood,
                size: 48,
              ),
              const SizedBox(width: 18),
              Text("Cooking Up!")
            ],
          ),
        ),
        ListTile(
          leading: Icon(Icons.restaurant, size: 26),
          title: Text("Meals"),
          onTap: () {
            onSelectScreen("meals");
          },
        ),
        ListTile(
          leading: Icon(Icons.settings, size: 26),
          title: Text("Filters"),
          onTap: () {
            onSelectScreen("filters");
          },
        )
      ]),
    );
  }
}
