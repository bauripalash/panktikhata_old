import 'package:flutter/material.dart';
import 'package:panktikhata/editview.dart';
import 'package:panktikhata/navview.dart';
import 'package:panktikhata/settings.dart';
import 'package:panktikhata/settingsview.dart';
import 'package:panktikhata/topmenubar.dart';
import 'package:re_editor/re_editor.dart';
import 'package:panktikhata/syntax/pankti.dart';
import 'package:re_highlight/styles/all.dart';
import 'package:re_highlight/styles/tomorrow-night-blue.dart';
import 'package:panktikhata/codetheme.dart';

import 'package:panktikhata/panktiapi.dart';

class PanktiFrontPage extends StatefulWidget {
  const PanktiFrontPage({super.key});

  @override
  State<PanktiFrontPage> createState() => _PanktiFrontPage();
}

class _PanktiFrontPage extends State<PanktiFrontPage> {
  int _index = 0;
  final ff = CodeFFI();
  

  var _key = UniqueKey();
  var usettings = UserSettings();

  final defaultTheme = tomorrowNightBlueTheme;
  late final currentTheme = builtinAllThemes["xt256"] ?? defaultTheme;
  late final TextStyle root = currentTheme.values.first;

  late final outputController = TextEditingController();

  late final codeEditorController = CodeLineEditingController();
  var codeEditorStyle = const CodeEditorStyle();

  @override
  initState() {
	  print(ff.sum(1,2));
	  print(ff.dlib);
	  print(ff.allsample("Hello", 5));
    print("init state called");
    usettings.fontSize = 20;
    usettings.theme = CodeTheme.a11Light;
    codeEditorStyle = CodeEditorStyle(
      fontSize: usettings.fontSize!,
      fontFamily: 'Noto Serif Bengali',
      backgroundColor: usettings.theme!.style.values.first.backgroundColor,
      textColor: usettings.theme!.style.values.first.color,
      codeTheme: CodeHighlightTheme(
        languages: {
          'pankti': CodeHighlightThemeMode(mode: langPankti),
        },
        theme: usettings.theme!.style,
      ),
    );
    super.initState();
  }

  void settingsChanged(UserSettings s) {
    setState(() {
      usettings = s;
      codeEditorStyle = CodeEditorStyle(
        fontSize: s.fontSize,
        fontFamily: 'Noto Serif Bengali',
        backgroundColor: usettings.theme!.style.values.first.backgroundColor,
        textColor: usettings.theme!.style.values.first.color,
        codeTheme: CodeHighlightTheme(
          languages: {
            'pankti': CodeHighlightThemeMode(mode: langPankti),
          },
          theme: usettings.theme!.style,
        ),
      );

      print("set state");
	
      _key = UniqueKey();
    });
  }

  void navSelected(int index) {
    _index = index;
  }

  void _runButtonClicked(void _) {
    outputController.text = codeEditorController.text;
  }

  void openClicked(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return PanktiSettingsPage(
            settings: usettings,
            settingsChanged: (UserSettings settings) {
              settingsChanged(settings);
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TopMenuBar(
          openClicked: (_) {
            openClicked(context);
          },
        ),
        Expanded(
            child: Row(
          children: <Widget>[
            MainNavigationBar(
              navigationSelected: navSelected,
              runButtonClicked: _runButtonClicked,
            ),
            const VerticalDivider(thickness: 1, width: 1),
            Expanded(
              child: Container(
                key: _key,
                child: PanktiEditView(
                  key: _key,
                  codeEditorController: codeEditorController,
                  codeEditorStyle: codeEditorStyle,
                  outputController: outputController,
                ),
              ),
            )
          ],
        )),
      ],
    );
  }
}
