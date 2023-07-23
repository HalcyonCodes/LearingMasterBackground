import 'package:flutter/material.dart';

import './tag_search_setting_class_tag_page.dart';
import '../../../Config/index.dart';
import './tag_setting_tag_tab_page.dart';

class TagList extends StatelessWidget {
  final String tagCount;
  const TagList({super.key, required this.tagCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      height: MediaQuery.sizeOf(context).height - 24 - 24 - 32 - 41,
      width: MediaQuery.of(context).size.width <= 1920
          ? (1920 - 24) / 24 * 7 - 24
          : (MediaQuery.sizeOf(context).width - 24) / 24 * 7 - 24,
      child: Container(
        clipBehavior: Clip.none,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRect(
                clipBehavior: Clip.none,
                child: Container(
                  clipBehavior: Clip.none,
                  //height: 41 + 12 +17 + 12,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TagSearch(),
                      const SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Text(
                          '共 $tagCount 个标签',
                          style: KFont.tagCoutSytle,
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
                  clipper: RectangleClipper (),

                  child: SizedBox(
                    height:  MediaQuery.sizeOf(context).height - 24 - 24 - 32 - 41 - 16 - 16 - 17 - 46,
                    child: ScrollConfiguration(
                    behavior:
                        ScrollConfiguration.of(context).copyWith(scrollbars: false),
                      child: ListView(
                        clipBehavior: Clip.none,
                        children: [
                          Tag(onClick: (){}, date: '2021/9/14 18:09', tagName: 'C++',),
                          Tag(onClick: (){}, date: '2021/9/14 18:09', tagName: 'C++',),
                          Tag(onClick: (){}, date: '2021/9/14 18:09', tagName: 'C++',),
                          Tag(onClick: (){}, date: '2021/9/14 18:09', tagName: 'C++',),
                          Tag(onClick: (){}, date: '2021/9/14 18:09', tagName: 'C++',),
                          Tag(onClick: (){}, date: '2021/9/14 18:09', tagName: 'C++',),
                          Tag(onClick: (){}, date: '2021/9/14 18:09', tagName: 'C++',),
                          Tag(onClick: (){}, date: '2021/9/14 18:09', tagName: 'C++',),
                          Tag(onClick: (){}, date: '2021/9/14 18:09', tagName: 'C++',),
                          Tag(onClick: (){}, date: '2021/9/14 18:09', tagName: 'C++',),
                          Tag(onClick: (){}, date: '2021/9/14 18:09', tagName: 'C++',),
                       
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