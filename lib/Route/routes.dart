import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import './handle_route.dart';

class Routes {
  static String root = '/';
  static String editorPage = '/EditorPage';
  static String classPage = '/ClassPage';

  //---------
  static void configureRotes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> para) {
      print('Error ==> Route Was Not Found!');
      return null;
    });

    //路由配置
    router.define(root, handler: editorPageHandle);
    router.define(editorPage, handler: editorPageHandle);
    router.define(classPage, handler: classPageHandle);
  }
}
