import 'package:flutter/material.dart';
import './conbination_search_conbination_page.dart';
import './conbination_card_conbination_page.dart';


class ConbinationList extends StatelessWidget {
  const ConbinationList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width <= 1920
          ? (1920 - 24) / 24 * 7 - 24
          : (MediaQuery.sizeOf(context).width - 24) / 24 * 7 - 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ConbinationSearch(),
          SizedBox(height: 32,),
          SizedBox(height: MediaQuery.of(context).size.height - 24 - 24 - 32 - 46,
            child: ClipPath(
              clipper: RectangleClipper(),
              child: ListView(
                clipBehavior: Clip.none,
                children: [
                  ConbiantionCard(
                        classCount: '3',
                        conbinationId: '1',
                        conbinationTitle: '全栈技术开发',
                        difficultyLevel: '9.0',
                        lengthLevel: '9.0',
                        usabilityLevel: '9.0',
                        onClick: () {},
                      )

                ],
              )
            )
          ),


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
