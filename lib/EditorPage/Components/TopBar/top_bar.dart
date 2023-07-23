import 'package:flutter/material.dart';
import '../../../Config/index.dart';
import './top_bar_select_button.dart';
import './push_button.dart';
import '../Util/editor_page_util.dart';

class TopBar extends StatefulWidget {
  final EditorPageUtil editorPageUtil;
  const TopBar({super.key, required this.editorPageUtil});
  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  int selectIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: KColor.containerColor,
        boxShadow: [KShadow.shadow],
      ),
      margin: const EdgeInsets.only(left: 24),
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 41,
        width: MediaQuery.of(context).size.width <= 1920
            ? 1920 - 24 - 24 - 24 - 134
            : MediaQuery.of(context).size.width -
                24 -
                24 -
                24 -
                ((MediaQuery.of(context).size.width - 24) / 24 * 2 - 24),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 24,
            ),
            TopBarSelectButton(
                text: KString.editArticle,
                isSelected: selectIndex == 0 ? true : false,
                onTap: firstSelectBtnOnTap),
            const SizedBox(
              width: 81,
            ),
            TopBarSelectButton(
                text: KString.settingTag,
                isSelected: selectIndex == 1 ? true : false,
                onTap: secondSelectBtnOnTap),
            const SizedBox(
              width: 81,
            ),
            TopBarSelectButton(
                text: KString.settingClass,
                isSelected: selectIndex == 2 ? true : false,
                onTap: thirdSelectBtnOnTap),
            const Expanded(child: SizedBox()),
            PushButton(
              draft: draft,
              push: push,
            )
          ],
        ),
      ),
    );
  }

  //切换小箭头
  void switchIndex(int i) {
    selectIndex = i;
  }

  //刷新
  void refreshUi() {
    setState(() {});
  }

  //第1个按钮
  void firstSelectBtnOnTap() {
    switchIndex(0);
    refreshUi();
    widget.editorPageUtil.scrollPageview!(0);

  }

  //第2个按钮
  void secondSelectBtnOnTap() {
    switchIndex(1);
    refreshUi();
    widget.editorPageUtil.scrollPageview!(1);
  }

  //第3个按钮
  void thirdSelectBtnOnTap() {
    switchIndex(2);
    refreshUi();
    widget.editorPageUtil.scrollPageview!(2);
  }

  //草稿
  void draft() {}

  //发布
  void push() {}
}
