import 'package:flutter/material.dart';

import './lesson_search_class_page.dart';

import 'package:double_bladed_axe/double_bladed_axe.dart';
import './lesson_card_class_page.dart';

class LessonStore extends StatefulWidget {

  final String maxPage;
  final String currentPage;


  const LessonStore(
      {super.key,

      required this.currentPage,
      required this.maxPage,});

  @override
  State<LessonStore> createState() => _LessonStoreState();
}

class _LessonStoreState extends State<LessonStore> {

  String? maxPage;
  String? currentPage;

  ListUtil? listUtil;

  @override
  void initState() {
    super.initState();
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
          ? (1920 - 24) / 24 * 7 - 24
          : (MediaQuery.sizeOf(context).width - 24) / 24 * 7 - 24,
      //height: MediaQuery.of(context).size.height - 24 - 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LessonSearch(),
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
                        height: MediaQuery.of(context).size.height - 24 - 24 - 16 - 46,
                        child:ListView(
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