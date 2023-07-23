import 'package:flutter/material.dart';
import 'package:learning_master_background/EditorPage/Components/TabPage/tag_tool_bar_setting_tag_tab_page.dart';
import 'tag_list_setting_tag_tab_page.dart';
import 'tag_storehouse_setting_tag_tab_page.dart';

//editorPage->tabPage->settingTagPage设置标签tab页

class SettingTagTabPage extends StatefulWidget {
  const SettingTagTabPage({super.key});

  @override
  State<SettingTagTabPage> createState() => _SettingTagTabPageState();
}

class _SettingTagTabPageState extends State<SettingTagTabPage>
    with AutomaticKeepAliveClientMixin {

@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TagList(tagCount: '13'),
        const SizedBox(
          width: 24,
        ),
        TagToolBar(
          firstClick: () {},
          secondClick: () {},
          thirdClick: () {},
          fourthClick: () {},
          fifthClick: () {},
        ),
        const SizedBox(
          width: 24,
        ),
        TagStoreHouse(),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
