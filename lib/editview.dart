import 'package:flutter/material.dart';
import 'package:multi_split_view/multi_split_view.dart';
import 'package:panktikhata/codeeditor.dart';
import 'package:re_editor/re_editor.dart';

class PanktiEditView extends StatefulWidget {
  const PanktiEditView({
    super.key,
    required this.codeEditorStyle,
    required this.codeEditorController,
    required this.outputController,
  });

  final CodeEditorStyle codeEditorStyle;
  final CodeLineEditingController codeEditorController;
  final TextEditingController outputController;

  @override
  State<PanktiEditView> createState() => _PanktiEditView();
}

class _PanktiEditView extends State<PanktiEditView> {
  late final outputController = widget.outputController;
  //late final codeEditorStyle = widget.codeEditorStyle;
  //late final codeEditorController = widget.codeEditorController;

  late final splitPanelController = MultiSplitViewController(areas: <Area>[
    Area(
        builder: (context, area) => PanktiCodeEdit(
              codeEditorStyle: widget.codeEditorStyle,
              codeEditorController: widget.codeEditorController,
            )),
    Area(
      builder: (context, area) => TextField(
        controller: outputController,
        keyboardType: TextInputType.multiline,
        maxLines: null,
        minLines: null,
        expands: true,
        style: TextStyle(color: widget.codeEditorStyle.textColor),
        decoration: InputDecoration(
          filled: true,
          fillColor: widget.codeEditorStyle.backgroundColor,
        ),
      ),
    )
  ]);

  late final splitPanel = MultiSplitView(
    axis: Axis.vertical,
    controller: splitPanelController,
  );

  late final themedSplitPanel = MultiSplitViewTheme(
    data: MultiSplitViewThemeData(
      dividerPainter: DividerPainters.grooved1(
        color: Colors.indigo[100]!,
        highlightedColor: Colors.indigo[100]!,
      ),
    ),
    child: splitPanel,
  );

  @override
  Widget build(BuildContext context) {
    return themedSplitPanel;
  }
}
