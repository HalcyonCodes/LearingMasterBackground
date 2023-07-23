import 'package:flutter/material.dart';
import 'package:learning_master_background/EditorPage/Components/TabPage/tag_setting_tag_tab_page.dart';

class TagStoreHouse extends StatelessWidget {
  const TagStoreHouse({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height - 24 - 24 - 32 - 41,
      width: MediaQuery.of(context).size.width <= 1920
          ? (1920 - 24) / 24 * 7 - 24
          : (MediaQuery.sizeOf(context).width - 24) / 24 * 7 - 24,
      child: ClipPath(
        clipBehavior: Clip.hardEdge,
        clipper: RectangleClipper(),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: ListView(
            clipBehavior: Clip.none,
            children: [
              Tag(onClick: () {}, tagName: 'C#', date: '20023/9/4 12:00'),
              Tag(onClick: () {}, tagName: 'C#', date: '20023/9/4 12:00'),
              Tag(onClick: () {}, tagName: 'C#', date: '20023/9/4 12:00'),
              Tag(onClick: () {}, tagName: 'C#', date: '20023/9/4 12:00'),
              Tag(onClick: () {}, tagName: 'C#', date: '20023/9/4 12:00'),
              Tag(onClick: () {}, tagName: 'C#', date: '20023/9/4 12:00'),
              Tag(onClick: () {}, tagName: 'C#', date: '20023/9/4 12:00'),
              Tag(onClick: () {}, tagName: 'C#', date: '20023/9/4 12:00'),
              Tag(onClick: () {}, tagName: 'C#', date: '20023/9/4 12:00'),
              Tag(onClick: () {}, tagName: 'C#', date: '20023/9/4 12:00'),
              Tag(onClick: () {}, tagName: 'C#', date: '20023/9/4 12:00'),
              Tag(onClick: () {}, tagName: 'C#', date: '20023/9/4 12:00'),
              Tag(onClick: () {}, tagName: 'C#', date: '20023/9/4 12:00'),
              Tag(onClick: () {}, tagName: 'C#', date: '20023/9/4 12:00'),
              Tag(onClick: () {}, tagName: 'C#', date: '20023/9/4 12:00'),
              Tag(onClick: () {}, tagName: 'C#', date: '20023/9/4 12:00'),
              Tag(onClick: () {}, tagName: 'C#', date: '20023/9/4 12:00'),
              Tag(onClick: () {}, tagName: 'C#', date: '20023/9/4 12:00'),
              Tag(onClick: () {}, tagName: 'C#', date: '20023/9/4 12:00'),
            ],
          ),
        ),
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