import 'package:flutter/material.dart';
import '../../Config/index.dart';
import 'package:flutter_svg/svg.dart';
import './class_card_conbination_page.dart';

class ToolClassList extends StatefulWidget {
  final String className;
  final String classId;
  final double height;

  const ToolClassList(
      {super.key,
      required this.classId,
      required this.className,
      required this.height});

  @override
  State<ToolClassList> createState() => _ToolClassLisState();
}

class _ToolClassLisState extends State<ToolClassList> {
  String? className;
  String? classId;

  @override
  void initState() {
    super.initState();
    classId = widget.classId;
    className = widget.className;
  }

  List<ClassCard> initLessonCard = [
    ClassCard(
        classId: '123',
        lastUpdateTime: '2023/7/27',
        classCount: '13',
        className: 'C++',
        classStatus: '新建文件夹',
        onClick: () {}),
    ClassCard(
        classId: '123',
        lastUpdateTime: '2023/7/27',
        classCount: '13',
        className: 'C++',
        classStatus: '新建文件夹',
        onClick: () {}),
    ClassCard(
        classId: '123',
        lastUpdateTime: '2023/7/27',
        classCount: '13',
        className: 'C++',
        classStatus: '新建文件夹',
        onClick: () {}),
    ClassCard(
        classId: '123',
        lastUpdateTime: '2023/7/27',
        classCount: '13',
        className: 'C++',
        classStatus: '新建文件夹',
        onClick: () {}),
    ClassCard(
        classId: '123',
        lastUpdateTime: '2023/7/27',
        classCount: '13',
        className: 'C++',
        classStatus: '新建文件夹',
        onClick: () {}),
    ClassCard(
        classId: '123',
        lastUpdateTime: '2023/7/27',
        classCount: '13',
        className: 'C++',
        classStatus: '新建文件夹',
        onClick: () {}),
    ClassCard(
        classId: '123',
        lastUpdateTime: '2023/7/27',
        classCount: '13',
        className: 'C++',
        classStatus: '新建文件夹',
        onClick: () {})
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width <= 1920
          ? (1920 - 24) / 24 * 8 - 24
          : (MediaQuery.sizeOf(context).width - 24) / 24 * 8 - 24,
      //height: MediaQuery.of(context).size.height - 24 - 24,
      child: Column(
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
                      'Svg/nail.svg',
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Text(
                      className!,
                      style: KFont.toolBarStyle,
                    ),
                  ),
                  Text(
                    classId!,
                    style: KFont.toolBarStyle,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ClipPath(
              clipper: RectangleClipper(),
              child: SizedBox(
                  child: ScrollConfiguration(
                      behavior: ScrollConfiguration.of(context)
                          .copyWith(scrollbars: false),
                      child: SizedBox(
                        height: widget.height  - 46 - 16,
                        child: ListView(
                          clipBehavior: Clip.none,
                          children: initLessonCard,
                        ),
                      )))),
        ],
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
