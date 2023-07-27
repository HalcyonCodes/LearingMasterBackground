import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learning_master_background/Config/index.dart';
import 'edit_class_setting_class_tab_page.dart';
import 'add_class_setting_class_tab_page.dart';
import 'delect_class_setting_class_tab_page.dart';

class ClassToolBar extends StatefulWidget {
  final Function? firstClick;
  final Function? secondClick;
  final Function? thirdClick;
  final Function? fourthClick;
  final Function? fifthClick;

  const ClassToolBar({
    super.key,
    required this.firstClick,
    required this.secondClick,
    required this.thirdClick,
    required this.fourthClick,
    required this.fifthClick,
  });

  @override
  State<ClassToolBar> createState() => _ClassToolBarState();
}

class _ClassToolBarState extends State<ClassToolBar> {
  int? currentToolIndex;

  //选定tag后设置当前tag
  String? currentCLassName;
  String? currentClassId;
  String? currentClassStatus;

  @override
  void initState() {
    super.initState();
    currentToolIndex = 1;
  }

  @override
  Widget build(BuildContext context) {

      double buttonWidth = MediaQuery.of(context).size.width <= 1920
        ? (((1920 - 24 - 24) -
                    ((1920 - 24) / 24 * 2) -
                    ((((1920 - 24) / 24) * 7) - 24) * 2) -
                (24 * 4) -
                24 * 2) /
            5
        : (((MediaQuery.of(context).size.width - 24 - 24) -
                    ((MediaQuery.of(context).size.width - 24) / 24 * 2) -
                    ((((MediaQuery.of(context).size.width - 24) / 24) * 7) -
                            24) *
                        2) -
                (24 * 4) -
                24 * 2) /
            5;
    return SizedBox(
      //height: MediaQuery.sizeOf(context).height - 24 - 24 - 24 - 41,
      width: MediaQuery.of(context).size.width <= 1920
          ? (1920 - 24) / 24 * 8 - 24
          : (MediaQuery.sizeOf(context).width - 24) / 24 * 8 - 24,
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: KColor.containerColor,
                  boxShadow: [KShadow.shadow]),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 22,
                      width: 22,
                      child: SvgPicture.asset(
                        'Svg/cog-fill.svg',
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      KString.toolBar,
                      style: KFont.toolBarStyle,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Wrap(spacing: 24, runSpacing: 16, children: [
              InkWell(
                onTap: widget.firstClick!(),
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  decoration: BoxDecoration(
                    color: KColor.containerColor,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [KShadow.shadow],
                  ),
                  alignment: Alignment.center,
                  height: buttonWidth,
                  width: buttonWidth,
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: SvgPicture.asset(
                      'Svg/edit.svg',
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: widget.secondClick!(),
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  decoration: BoxDecoration(
                    color: KColor.containerColor,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [KShadow.shadow],
                  ),
                  alignment: Alignment.center,
                  height: buttonWidth,
                  width: buttonWidth,
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: SvgPicture.asset(
                      'Svg/plus-circle-fill.svg',
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: widget.thirdClick!(),
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  decoration: BoxDecoration(
                    color: KColor.containerColor,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [KShadow.shadow],
                  ),
                  alignment: Alignment.center,
                  height: buttonWidth,
                  width: buttonWidth,
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: SvgPicture.asset(
                      'Svg/caret-left.svg',
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: widget.fourthClick!(),
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  decoration: BoxDecoration(
                    color: KColor.containerColor,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [KShadow.shadow],
                  ),
                  alignment: Alignment.center,
                  height: buttonWidth,
                  width: buttonWidth,
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: SvgPicture.asset(
                      'Svg/caret-right.svg',
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: widget.fifthClick!(),
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  decoration: BoxDecoration(
                    color: KColor.containerColor,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [KShadow.shadow],
                  ),
                  alignment: Alignment.center,
                  height: buttonWidth,
                  width: buttonWidth,
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: SvgPicture.asset(
                      'Svg/delete-fill.svg',
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: 32,
            ),
            currentToolIndex == 1
                ? EditClass()
                : currentToolIndex == 2
                    ? AddClass()
                    : currentToolIndex == 5
                        ? DelectClass(className: '游戏逆向分析入门', classId: 'xx123',)
                        : SizedBox()
          ]),
    );
  }
}
