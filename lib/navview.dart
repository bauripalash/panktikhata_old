import 'package:flutter/material.dart';

enum NavMenuItem {
  itemOpen,
  itemSave,
}

class MainNavigationBar extends StatefulWidget {
  const MainNavigationBar({
    super.key,
    required this.navigationSelected,
    required this.runButtonClicked,
  });
  final ValueChanged<int> navigationSelected;
  final ValueChanged<void> runButtonClicked;

  @override
  State<MainNavigationBar> createState() => _MainNavigationBar();
}

class _MainNavigationBar extends State<MainNavigationBar> {
  NavMenuItem? selectedItem;
  int _selectedIndex = 0;
  void changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
    widget.navigationSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: _selectedIndex,
      groupAlignment: 1.0,
      onDestinationSelected: changeIndex,
      leading: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          widget.runButtonClicked(null);
        },
        child: const Icon(Icons.play_arrow),
      ),
      destinations: const <NavigationRailDestination>[
        NavigationRailDestination(
          icon: Icon(Icons.edit_note_outlined),
          selectedIcon: Icon(Icons.edit_note),
          label: Text("Editor"),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.settings_outlined),
          selectedIcon: Icon(Icons.settings),
          label: Text("Settings"),
        ),
      ],
    );
  }
}
