import 'package:flutter/material.dart';
import 'package:project_april/data/notifiers.dart';
import 'package:project_april/views/pages/home_pages.dart';
import 'package:project_april/views/pages/settings_page.dart';
import 'package:project_april/views/widgets/navbar_widgets.dart';

List<Widget> pages = [
  HomePage(),
  SettingsPage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Flutter Mapp'),
        actions: [
          IconButton(
            onPressed: () {
              isDarkMode.value = !isDarkMode.value;
            },
          icon: ValueListenableBuilder(valueListenable: isDarkMode, builder:
              (context, isDarkMode, child) {
            return Icon(
            isDarkMode ?  Icons.light_mode : Icons.dark_mode
            );
          },),
          ),
        ],
      ),
      body: ValueListenableBuilder(valueListenable: selectedPageNotifier, builder: (context, selectedPage, child) {
        return pages.elementAt(selectedPage);
      },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
