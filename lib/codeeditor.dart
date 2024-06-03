import 'package:flutter/material.dart';
import 'package:re_editor/re_editor.dart';

class PanktiCodeEdit extends StatefulWidget {
  const PanktiCodeEdit({
    super.key,
    //required this.updateSource,
    required this.codeEditorStyle,
    required this.codeEditorController,
  });
  //final ValueChanged<String> updateSource;
  final CodeEditorStyle codeEditorStyle;
  final CodeLineEditingController codeEditorController;

  @override
  State<PanktiCodeEdit> createState() => _PanktiCodeEdit();
}

class _PanktiCodeEdit extends State<PanktiCodeEdit> {
  late final CodeLineEditingController controller = widget.codeEditorController;
  late final CodeEditorStyle style = widget.codeEditorStyle;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //controller.addListener(_updateSource);
    return CodeEditor(
      style: widget.codeEditorStyle,
      wordWrap: false,
      controller: widget.codeEditorController,
      indicatorBuilder:
          (context, editingController, chunkController, notifier) {
        return Row(
          children: [
            DefaultCodeLineNumber(
                notifier: notifier, controller: editingController)
          ],
        );
      },
    );
  }
}
