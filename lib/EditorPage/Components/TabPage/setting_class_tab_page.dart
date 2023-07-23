import 'package:flutter/material.dart';


import 'class_tool_bar_setting_class_tab_page.dart';
import 'class_list_setting_class_tab_page.dart';
import 'class_card_setting_class_tab_page.dart';

//EditorPage->TabPage->SettingClassTabPage 设置课程标签页




class SettingClassTabPage extends StatefulWidget {
  const SettingClassTabPage({super.key});

  @override
  State<SettingClassTabPage> createState() => _SettingClassTabPageState();
}

class _SettingClassTabPageState extends State<SettingClassTabPage> with AutomaticKeepAliveClientMixin{
   @override
  Widget build(BuildContext context) {
    super.build(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClassCard(classId: 'b12312', lastUpdateTime: '2023/7/22', classCount: '12', className: '游戏逆向开发', classStatus: '连载中', onClick: (){}),
        const SizedBox(
          width: 24,
        ),
        ClassToolBar(
          firstClick: () {},
          secondClick: () {},
          thirdClick: () {},
          fourthClick: () {},
          fifthClick: () {},
        ),
        const SizedBox(
          width: 24,
        ),
        //TagStoreHouse(),
        ClassList(classCount: '12'),
      ],
    );
  }
  
  @override
  bool get wantKeepAlive => true;
}