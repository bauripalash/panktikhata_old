import 'package:flutter/material.dart';
import 'package:panktikhata/settings.dart';
import 'package:panktikhata/codetheme.dart';

class PanktiSettingsPage extends StatefulWidget {
  const PanktiSettingsPage(
      {super.key, required this.settingsChanged, required this.settings});
  final UserSettings settings;
  final ValueChanged<UserSettings> settingsChanged;

  @override
  State<PanktiSettingsPage> createState() => _PanktiSettingsPage();
}

class _PanktiSettingsPage extends State<PanktiSettingsPage> {
  late final settings = widget.settings;

  void settingsChanged() {
    print("called from SettingsView");
    widget.settingsChanged(settings);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      alignment: Alignment.bottomCenter,
      insetPadding: const EdgeInsets.all(20.0),
      child: Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            const Text(
              "Settings",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.purpleAccent,
                fontSize: 30,
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const Text("Font Size"),
                  Slider(
                      value: settings.fontSize ?? 1,
                      min: 1,
                      max: 100,
                      label: (settings.fontSize ?? 1).round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          settings.fontSize = value;
                        });
                      }),
                ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Text("Editor Theme"),
                DropdownMenu<CodeTheme>(
                  initialSelection: settings.theme ?? CodeTheme.a11Light,
                  dropdownMenuEntries: CodeTheme.values
                      .map<DropdownMenuEntry<CodeTheme>>((CodeTheme th) {
                    return DropdownMenuEntry<CodeTheme>(
                      value: th,
                      label: th.label,
                    );
                  }).toList(),
                  onSelected: (CodeTheme? value) {
                    setState(() {
                      settings.theme = value;
                    });
                  },
                ),
              ],
            ),
            ButtonBar(
              alignment: MainAxisAlignment.end,
              children: <Widget>[
                ElevatedButton.icon(
                    onPressed: () {
                      settingsChanged();
                      Navigator.pop(context);
                    },
                    label: const Text("Save"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
