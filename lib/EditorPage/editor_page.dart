import 'package:flutter/material.dart';
import 'package:learning_master_background/Config/color.dart';
import 'package:learning_master_background/EditorPage/Components/TopBar/top_bar.dart';
import './Components/Nav/nav.dart';
import './Components/TabPage/editor_tab.dart';
import './Components/Util/editor_page_util.dart';

class EditorPage extends StatelessWidget {
  EditorPage({super.key});
  final EditorPageUtil editorPageUtil = EditorPageUtil();

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
                        selectIndex: 0),
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TopBar(
                            editorPageUtil: editorPageUtil,
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          EditorTab(
                            editorPageUtil: editorPageUtil,
                          ),
                        ],
                      ),
                    )
                  ]),
            )),
      ),
    );
  }
}
