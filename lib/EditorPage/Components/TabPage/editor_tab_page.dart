import 'package:flutter/material.dart';

import './editor_area.dart';
import './markdown_area.dart';

//editorPage->tabPage->EditorTabPage 编辑器页面


class EditorTabPage extends StatefulWidget {
  const EditorTabPage({super.key});

  @override
  State<EditorTabPage> createState() => _EditorTabPageState();
}

class _EditorTabPageState extends State<EditorTabPage> with AutomaticKeepAliveClientMixin{
    @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
        height: MediaQuery.sizeOf(context).height - 24 - 24 - 32 - 41,
        width: MediaQuery.of(context).size.width <= 1920
            ? 1920 - 24 - 24 - 24 - 134
            : (MediaQuery.sizeOf(context).width - 24) / 24 * 22 - 24,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            EditorArea(),
            SizedBox(
              width: 24,
            ),
            MarkDownArea(),
          ],
        ));
  }
  
  @override
  bool get wantKeepAlive => true;
}