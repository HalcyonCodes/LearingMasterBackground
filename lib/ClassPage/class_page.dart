

import 'package:flutter/material.dart';
import '../Config/index.dart';
import './Components/Nav/nav.dart';
import './Components/class_list_class_page.dart';
import './Components/tool_bar_class_page.dart';
import './Components/lesson_store_class_page.dart';

class ClassPage extends StatelessWidget {
  
  const ClassPage({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColor.backgroundColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width <= 1920
                ? 1920
                : MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Nav(
                      avatarUrl:
                          'https://5b0988e595225.cdn.sohucs.com/q_70,c_zoom,w_640/images/20170930/4a8ea1462fa34e61add47f61bed880dc.jpeg',
                      userName: 'reddock',
                      selectIndex: 1),
                  SizedBox(
                    width: 24,
                  ),
                  ClassList(classCount: '12'),
                  SizedBox(
                    width: 24,
                  ),
                  ClassToolBar(),
                  SizedBox(
                    width: 24,
                  ),
                  LessonStore(currentPage: '0', maxPage: '125')

                ],
              ),
            )),
      ),
    );
  }
}
