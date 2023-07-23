import 'package:flutter/material.dart';
import 'editor_tab_page.dart';
import './setting_tag_tab_page.dart';
import './setting_class_tab_page.dart';
import '../Util/editor_page_util.dart';

//EditroPage->TabPage 包含所有编功能内容的Tab
class EditorTab extends StatefulWidget {
  final EditorPageUtil editorPageUtil;

  const EditorTab({super.key, required this.editorPageUtil});

  @override
  State<EditorTab> createState() => _EditorTabState();
}

class _EditorTabState extends State<EditorTab> {
  PageController? pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
    //注册方法
    widget.editorPageUtil.setFuncScrollPageView(scrollPage);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
        margin: const EdgeInsets.only(left: 24),
        height: MediaQuery.sizeOf(context).height - 24 - 24 - 32 - 41,
        width: MediaQuery.of(context).size.width <= 1920
            ? 1920 - 24 - 24 - 24 - 134
            : (MediaQuery.sizeOf(context).width - 24) / 24 * 22 - 24,
        child: PageView(
          clipBehavior: Clip.none,
          physics: const ClampingScrollPhysics(),
          controller: pageController!,
          children: [
            EditorTabPage(),
            SettingTagTabPage(),
            SettingClassTabPage(),
          ],
        ));
  }

  //控制pageview切换页面方法
  void scrollPage(int i) {
    pageController!.jumpToPage(i);
  }
}
