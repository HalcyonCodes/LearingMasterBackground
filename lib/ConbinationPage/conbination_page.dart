import 'package:flutter/material.dart';
import 'package:learning_master_background/ConbinationPage/Components/conbination_list_conbination_page.dart';
import '../Config/index.dart';
import './Components/Nav/nav.dart';
import './Components/tool_bar_conbination_page.dart';
import './Components/class_store_conbination_page.dart';

class ConbinationPage extends StatelessWidget {
  const ConbinationPage({super.key});

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
                      selectIndex: 2),
                  SizedBox(
                    width: 24,
                  ),
                ConbinationList(),
                  SizedBox(
                    width: 24,
                  ),
                ConbinationToolBar(),
                  SizedBox(
                    width: 24,
                  ),
                ClassStore(),

                ],
              ),
            )),
      ),
    );
  }
}