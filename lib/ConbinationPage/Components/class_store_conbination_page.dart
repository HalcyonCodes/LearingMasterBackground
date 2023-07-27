import 'package:flutter/material.dart';
import './conbination_search_conbination_page.dart';
import './class_store_card_conbination_page.dart';

class ClassStore extends StatelessWidget {
  const ClassStore({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width <= 1920
            ? (1920 - 24) / 24 * 7 - 24
            : (MediaQuery.sizeOf(context).width - 24) / 24 * 7 - 24,
        height: MediaQuery.of(context).size.height - 24 - 24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ConbinationSearch(),
            SizedBox(
              height: 32,
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height - 24 - 24 - 46 - 32,
                child: ClipPath(
                  clipper: RectangleClipper(),
                  child: ScrollConfiguration(
                    behavior: ScrollConfiguration.of(context)
                          .copyWith(scrollbars: false),
                    child: ListView(
                      clipBehavior: Clip.none,
                      children: [
                        ClassStoreCard(classId: 'classId', lastUpdateTime: 'lastUpdateTime', classCount: 'classCount', className: 'className', classStatus: 'classStatus', onClick: (){}),
                        ClassStoreCard(classId: 'classId', lastUpdateTime: 'lastUpdateTime', classCount: 'classCount', className: 'className', classStatus: 'classStatus', onClick: (){}),
                        ClassStoreCard(classId: 'classId', lastUpdateTime: 'lastUpdateTime', classCount: 'classCount', className: 'className', classStatus: 'classStatus', onClick: (){}),
                        ClassStoreCard(classId: 'classId', lastUpdateTime: 'lastUpdateTime', classCount: 'classCount', className: 'className', classStatus: 'classStatus', onClick: (){}),
                        ClassStoreCard(classId: 'classId', lastUpdateTime: 'lastUpdateTime', classCount: 'classCount', className: 'className', classStatus: 'classStatus', onClick: (){}),
                        ClassStoreCard(classId: 'classId', lastUpdateTime: 'lastUpdateTime', classCount: 'classCount', className: 'className', classStatus: 'classStatus', onClick: (){}),
                        ClassStoreCard(classId: 'classId', lastUpdateTime: 'lastUpdateTime', classCount: 'classCount', className: 'className', classStatus: 'classStatus', onClick: (){}),
                        ClassStoreCard(classId: 'classId', lastUpdateTime: 'lastUpdateTime', classCount: 'classCount', className: 'className', classStatus: 'classStatus', onClick: (){}),
                        ClassStoreCard(classId: 'classId', lastUpdateTime: 'lastUpdateTime', classCount: 'classCount', className: 'className', classStatus: 'classStatus', onClick: (){}),
                        ClassStoreCard(classId: 'classId', lastUpdateTime: 'lastUpdateTime', classCount: 'classCount', className: 'className', classStatus: 'classStatus', onClick: (){}),
                        ClassStoreCard(classId: 'classId', lastUpdateTime: 'lastUpdateTime', classCount: 'classCount', className: 'className', classStatus: 'classStatus', onClick: (){}),
                        ClassStoreCard(classId: 'classId', lastUpdateTime: 'lastUpdateTime', classCount: 'classCount', className: 'className', classStatus: 'classStatus', onClick: (){}),
                        ClassStoreCard(classId: 'classId', lastUpdateTime: 'lastUpdateTime', classCount: 'classCount', className: 'className', classStatus: 'classStatus', onClick: (){}),
                        ClassStoreCard(classId: 'classId', lastUpdateTime: 'lastUpdateTime', classCount: 'classCount', className: 'className', classStatus: 'classStatus', onClick: (){}),
                      ],
                    ),
                  ),
                ))
          ],
        ));
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
