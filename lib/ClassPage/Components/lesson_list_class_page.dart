import 'package:flutter/material.dart';
import '../../Config/index.dart';
import 'package:flutter_svg/svg.dart';
import 'package:double_bladed_axe/double_bladed_axe.dart';
import './lesson_card_class_page.dart';

class LessonList extends StatefulWidget {
  final String className;
  final String classId;
  final String maxPage;
  final String currentPage;
  final double height;

  const LessonList(
      {super.key,
      required this.classId,
      required this.className,
      required this.currentPage,
      required this.maxPage,required this.height});

  @override
  State<LessonList> createState() => _LessonListState();
}

class _LessonListState extends State<LessonList> {
  String? className;
  String? classId;
  String? maxPage;
  String? currentPage;

  ListUtil? listUtil;

  @override
  void initState() {
    super.initState();
    classId = widget.classId;
    className = widget.className;
    maxPage = widget.maxPage;
    currentPage = widget.currentPage;
    listUtil = ListUtil();
  }

  List<LessonCard> initLessonCard = [
    LessonCard(
        className: 'C++',
        lessonId: 'A001',
        lessonTitle: 'C++学习前言',
        lessonProfile: '学习c++之前需要知道的事项',
        lessonTags: ['C++', '入门']),
    LessonCard(
        className: 'C++',
        lessonId: 'A001',
        lessonTitle: 'C++学习前言',
        lessonProfile: '学习c++之前需要知道的事项',
        lessonTags: ['C++', '入门']),
    LessonCard(
        className: 'C++',
        lessonId: 'A001',
        lessonTitle: 'C++学习前言',
        lessonProfile: '学习c++之前需要知道的事项',
        lessonTags: ['C++', '入门']),
    LessonCard(
        className: 'C++',
        lessonId: 'A001',
        lessonTitle: 'C++学习前言',
        lessonProfile: '学习c++之前需要知道的事项',
        lessonTags: ['C++', '入门']),
    LessonCard(
        className: 'C++',
        lessonId: 'A001',
        lessonTitle: 'C++学习前言',
        lessonProfile: '学习c++之前需要知道的事项',
        lessonTags: ['C++', '入门']),
    LessonCard(
        className: 'C++',
        lessonId: 'A001',
        lessonTitle: 'C++学习前言',
        lessonProfile: '学习c++之前需要知道的事项',
        lessonTags: ['C++', '入门']),
    LessonCard(
        className: 'C++',
        lessonId: 'A001',
        lessonTitle: 'C++学习前言',
        lessonProfile: '学习c++之前需要知道的事项',
        lessonTags: ['C++', '入门']),
    LessonCard(
        className: 'C++',
        lessonId: 'A001',
        lessonTitle: 'C++学习前言',
        lessonProfile: '学习c++之前需要知道的事项',
        lessonTags: ['C++', '入门']),
    LessonCard(
        className: 'C++',
        lessonId: 'A001',
        lessonTitle: 'C++学习前言',
        lessonProfile: '学习c++之前需要知道的事项',
        lessonTags: ['C++', '入门']),
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
                        height: widget.height - 16 - 17 - 16 - 46,
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
