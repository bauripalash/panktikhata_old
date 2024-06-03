import 'package:flutter/material.dart';

class TopMenuBar extends StatefulWidget {
  const TopMenuBar({super.key, required this.openClicked});

  final ValueChanged openClicked;

  @override
  State<TopMenuBar> createState() => _TopMenuBar();
}

class _TopMenuBar extends State<TopMenuBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              child: MenuBar(
                children: <Widget>[
                  SubmenuButton(
                    menuChildren: <Widget>[
                      MenuItemButton(
                        onPressed: () {
                          widget.openClicked(null);
                        },
                        child: const MenuAcceleratorLabel("&Open"),
                      ),
                    ],
                    child: const MenuAcceleratorLabel("File"),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
