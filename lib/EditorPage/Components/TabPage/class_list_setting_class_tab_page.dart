import 'package:flutter/material.dart';

import '../../../Config/index.dart';
import 'class_card_setting_class_tab_page.dart';
import './class_search_setting_class_tag_page.dart';

class ClassList extends StatelessWidget {
  final String classCount;
  const ClassList({super.key, required this.classCount});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height - 24 - 24 - 24 - 41,
      width: MediaQuery.of(context).size.width <= 1920
          ? (1920 - 24) / 24 * 7 - 24
          : (MediaQuery.sizeOf(context).width - 24) / 24 * 7 - 24,
      child: SizedBox(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRect(
                clipBehavior: Clip.none,
                child: SizedBox(
                  //height: 41 + 12 +17 + 12,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClassSearch(),
                      const SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Text(
                          '共 $classCount 个课程',
                          style: KFont.coutSytle,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
              ),
              ClipPath(
                clipper: RectangleClipper(),
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height -
                      24 -
                      24 -
                      32 -
                      41 -
                      16 -
                      16 -
                      17 -
                      46,
                  child: ScrollConfiguration(
                    behavior: ScrollConfiguration.of(context)
                        .copyWith(scrollbars: false),
                    child: ListView(
                      clipBehavior: Clip.none,
                      children: [
                        ClassCard(
                            classId: 'BC123',
                            lastUpdateTime: '2023/7/22',
                            classCount: '12',
                            className: '全栈技术开发',
                            classStatus: '新建文件夹',
                            onClick: () {}),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}

//通过裁剪遮住滚动项目越界
class RectangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.addRect(Rect.fromLTRB(-500, 0, 1920, size.height));
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
