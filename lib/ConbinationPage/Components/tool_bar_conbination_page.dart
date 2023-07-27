import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learning_master_background/Config/index.dart';
import './class_list_conbination_page.dart';
import './add_conbination_conbination_page.dart';
import './edit_conbination_conbination_page.dart';
import './delect_conbination_conbination_page.dart';

class ConbinationToolBar extends StatefulWidget {
  const ConbinationToolBar({
    super.key,
  });

  @override
  State<ConbinationToolBar> createState() => _ConbinationToolBarState();
}

class _ConbinationToolBarState extends State<ConbinationToolBar> {
  int? currentToolIndex;

  //选定class后设置当前class
  String? currentClassName;
  String? currentClassId;

  //选定lesson后设置当前lesson

  double? buttonWidth;

  @override
  void initState() {
    super.initState();
    currentToolIndex = 5;
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
      height: MediaQuery.of(context).size.height - 24 - 24,
      child: Column(
          //mainAxisSize: MainAxisSize.min,
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
                ?  ToolClassList(classId: '123', className: '全栈技术开发',  
                height: MediaQuery.of(context).size.height - 24 - 24 - buttonWidth! - 32 - 16 -46 )
                : currentToolIndex == 1
                    ? EditConbination(height: buttonWidth!, conbinationId: 'asd123', conbinationTitle: 'conbinationTitle', difficultyLevel: 'difficultyLevel', lengthLevel: 'lengthLevel', usabilityLevel: 'usabilityLevel', conbinationProfile: 'conbinationProfile')
                    : currentToolIndex == 2
                    ? AddConbination(height: buttonWidth!, conbinationId: '', conbinationTitle: '', difficultyLevel: '', lengthLevel: '', usabilityLevel: '', conbinationProfile: '')
                    : currentToolIndex == 5
                    ? DelectConbination(conbinationId: '321', conbinationName: '全栈技术开发',)
                    : SizedBox()
          ]),
    );
  }

  Function()? firstClick() {}

  Function()? secondClick() {}
  Function()? thirdClick() {}
  Function()? fourthClick() {}
  Function()? fifthClick() {}
}
