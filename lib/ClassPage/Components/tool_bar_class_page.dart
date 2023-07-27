import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learning_master_background/ClassPage/Components/delect_lesson_class_page.dart';
import 'package:learning_master_background/Config/index.dart';
import './add_class_class_page.dart';
import './lesson_list_class_page.dart';
import './edit_class_class_page.dart';
import './delect_class_class_page.dart';
import './edit_lesson_class_page.dart';

class ClassToolBar extends StatefulWidget {
  const ClassToolBar({
    super.key,
  });

  @override
  State<ClassToolBar> createState() => _ClassToolBarState();
}

class _ClassToolBarState extends State<ClassToolBar> {
  int? currentToolIndex;

  //选定class后设置当前class
  String? currentClassName;
  String? currentClassId;

  //选定lesson后设置当前lesson

  double? buttonWidth;

  @override
  void initState() {
    super.initState();
    currentToolIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    buttonWidth = MediaQuery.of(context).size.width <= 1920
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
              height: 46,
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
            Wrap(spacing: 24, children: [
              InkWell(
                onTap: firstClick,
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
                onTap: secondClick,
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
                onTap: thirdClick,
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
                onTap: fourthClick,
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
                onTap: fifthClick,
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
            currentToolIndex == 0
                ?  LessonList(
                   height: MediaQuery.of(context).size.height - buttonWidth! - 46 - 24 - 24 -  16 - 32,
                        classId: 'CA0503',
                        className: 'C++基础入门',
                        currentPage: '0',
                        maxPage: '15')
                : currentToolIndex == 1
                    ? ClassPageEditClass()
                    : currentToolIndex == 2
                        ? ClassPageAddClass()
                        : currentToolIndex == 3
                        ? ClassPageDelectClass(className: 'C++', classId: 'A123')
                        : currentToolIndex == 4
                        ? ClassPageEditLesson()
                        : currentToolIndex == 5
                        ? ClassPageDelectLesson(lessonName: 'C++', lessonId: 'b342')
                        : const SizedBox()
          ]),
    );
  }

  Function()? firstClick() {}

  Function()? secondClick() {}
  Function()? thirdClick() {}
  Function()? fourthClick() {}
  Function()? fifthClick() {}
}
